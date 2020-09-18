from django.shortcuts import render, redirect
from django.http import HttpResponse, JsonResponse
from .models import *
import csv, io 
import base64
# from .forms import CreateUserForm
from .forms import CreateUserForm, WatchListForm, MarketForm, UserUpdateForm
import json
# Importing the gorups from the django models
from django.contrib.auth.models import Group
from .arima import arima
from .prophet import prophet
from .LSTM import lstm_stock
# Flash Message
from django.contrib import messages

# For authentication process and login and logout
from django.contrib.auth import authenticate, login, logout

# Restricitng pages for only login user so only the login user can view the pages
from django.contrib.auth.decorators import login_required

# importing decorators function
from .decorators import unauthenticated_user, allowed_users

# Getting the user module for the watchlist
from django.contrib.auth.models import User

# importing the filters model or class
# from .filters import *

# Importing the python libraries for Algo Process
import pandas as pd
# from IPython.display import HTML


# Register Page
@unauthenticated_user
def registerPage(request):

    # getiing the form and assignint it to a variable that is passing in the context
    form = CreateUserForm()

    # Getting the data from the post request and validating it first then saving it in the database

    if request.method == 'POST':
        form = CreateUserForm(request.POST)
        if form.is_valid():
            user = form.save()   # saving the form and assigning it to a variable as a user object that has all the fields data that was in the form
            username = form.cleaned_data.get('username') # Getting the username from the submitted form
            group = Group.objects.get(name='user') # getting the user group from the created groups in the admin panel or django model/groups
            user.groups.add(group)
            messages.success(request, 'Account was created for ' + username)
            return redirect('login')

    context = {'form': form}
    return render(request, 'users/register.html', context)


# Login Page
@unauthenticated_user
def loginPage(request):

    if request.method == 'POST':
        username = request.POST.get('username')   # getting the username and password from the submitted login form or page
        password = request.POST.get('password')

        user = authenticate(request, username = username, password = password)   # authenticating the user by matching the username and password from the submitted form and in the database

        if user is not None:
            login(request, user)    # logging in the user and then redirecting it to the home page
            return redirect('home')

    context = {}
    return render(request, 'users/login.html', context)


# Logout process
def logoutUser(request):
    logout(request)
    return redirect('login')



# Admin Home or Admin Dashboard
@login_required(login_url='login') # decorator to restrict the pages to view only as or after login
@allowed_users(allowed_roles=['admin'])
def home(request):
    

    # DIsplaying the Market Data List
    csvfiles = CsvFile.objects.all()

    # Uploading the CSV FIle
    if request.method == 'POST':
        csv_file = request.FILES['csv']
        csv_name = request.POST['name']
        csv_check = csv_name + '.csv'
        print(csv_check)
        print(csv_file)
        for fileName in csvfiles:
            if fileName.name == csv_name: 
                print('already added')
                messages.info(request, f'The file with the name {csv_name} is already Already Added. Please select another file and do not upload the same file with the different name')
                print(fileName.csv.url)
                return redirect('home')            

        if not csv_file.name.endswith('.csv'):
            messages.error(request, 'This is not a csv File')
            return redirect('home') 

        form = MarketForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('home')
    else:
        form = MarketForm()

    context = {
        # 'order': 'ORDER of csv should be Date,Open,High,Low,Close,Adj_Close,Volume',
        'form': form,
        'files': csvfiles,
        
    }    

    
    return render(request, 'users/home.html', context)



# View the uploaded market Data
@login_required(login_url='login') # decorator to restrict the pages to view only as or after login
@allowed_users(allowed_roles=['admin'])
def view_marketData(request, pk):


    marketList = CsvFile.objects.get(id = pk)  # getting the market by comparing the pk
    market_name = marketList.name   # getting the matched market name
    market_path = marketList.csv.path  # getting the path of the matched market
    market_data = pd.read_csv(market_path)    # reading the csv file of the matched market by using its path
    
    df = market_data.to_dict('records')  # converting the csv data into dictionary so it is readable in html

    context = {'df': df, 'market_name': marketList.name}

    return render(request, 'users/viewStockData.html', context)



# Deleting the uploaded market data csv
def delete_market(request, pk):
    if request.method == 'POST':
        market = CsvFile.objects.get(id=pk)
        market.delete()
    return redirect('home')



# view_users view
def view_users(request):

    users = User.objects.all()


    context = {'users': users}
    return render(request, 'users/view_users.html', context)

# Arima Algo
# ARIMA Algo function that gets the data from the database and then train itself on that data and give the prediction result data
def arima1(request):
    if request.method == 'POST':
        market = request.POST.get("market", "")
        # marketName = request.POST.get("marketName", "")

        labels = []
        data = []
        marketName = ''

        marketData = CsvFile.objects.get(name=market)
        path = marketData.csv.path
        path=arima(path)
        image=open(path,'rb')
        imag=image.read()
        base64string=base64.encodestring(imag).decode("utf-8")
        real='data:image/png;base64,'+str(base64string)
        # with open(path,"rb") as image_file:
        #     encoded_string=base64.b64decode(image_file.read())
        # # data=str(encoded_string).split("'")

        context = {
            # 'market': market,
            # 'marketName': marketName,

            'data': real,

        }

        return JsonResponse(context, safe=False)

# FB-Prophet Algo
# FBProphet Algo function that gets the data from the database and then train itself on that data and give the prediction result data
def fbprophet1(request):
    if request.method == 'POST':
        market = request.POST.get("market", "")
        # marketName = request.POST.get("marketName", "")

        labels = []
        data = []
        marketName = ''

        marketData = CsvFile.objects.get(name=market)
        path = marketData.csv.path
        path=prophet(path)
        image=open(path,'rb')
        imag=image.read()
        base64string=base64.encodestring(imag).decode("utf-8")
        real='data:image/png;base64,'+str(base64string)
        # with open(path,"rb") as image_file:
        #     encoded_string=base64.b64decode(image_file.read())
        # # data=str(encoded_string).split("'")

        context = {
            # 'market': market,
            # 'marketName': marketName,

            'data': real,

        }

        return JsonResponse(context, safe=False)

# LSTM ALGO
# LSTM Algo function that gets the data from the database and then train itself on that data and give the prediction result data
# The other commented code like labels, data, marketName are variables for the chartjs
def lstm1(request):
    if request.method == 'POST':
        # market = request.POST.get("market", "")
        marketName = request.POST.get("marketName", "")
        #
        # labels = []
        # data = []
        # marketName = ''
        #
        # marketData = CsvFile.objects.get(name=market)
        # path = marketData.csv.path
        start_day = '01/01/1999'
        end_day = '23/07/2020'
        # print("testing",marketName)
        # Lookup step, 1 is the next day
        LOOKUP_STEP = 1
        # Company Name
        ticker = "FB"
        # ticker = "^DJI"
        # print("testing ticker", ticker)
        prediction,graphpath=lstm_stock(start_day,end_day,LOOKUP_STEP,ticker)
        # path,prediction=lstm(start_day,,companyname,noofdays)
        image=open(graphpath,'rb')
        imag=image.read()
        base64string=base64.encodestring(imag).decode("utf-8")
        real='data:image/png;base64,'+str(base64string)
        # with open(path,"rb") as image_file:
        #     encoded_string=base64.b64decode(image_file.read())
        # # data=str(encoded_string).split("'")

        context = {
            # 'market': market,
            # 'marketName': marketName,

            'data': real,
            'prediction':str(prediction),

        }

        return JsonResponse(context, safe=False)
# update_user view ..... to update the user info
def update_user(request, pk):

    user = User.objects.get(id = pk)
    

    if request.method == 'POST':
        form = UserUpdateForm(request.POST, instance = user)
        if form.is_valid():
            form.save()
            return redirect('view_users')

    else:
        form = UserUpdateForm(instance = user)
    

    context = {'form': form, 'user':user}
    return render(request, 'users/update_user.html', context)

# Delete User
def delete_user(request, pk):

    if request.method == 'POST':
        user = User.objects.get(id = pk)
        user.delete()
    return redirect('view_users')


# Home or Landing Page for user  it also include the watchlist functionality built but it is currently not displayed in the front-end
@login_required(login_url='login')
def home1(request):

    # labels = []
    # data = []
    # sdata 

    # DIsplaying the Market Data List
    stockMarket = CsvFile.objects.all()

    # getting the added watchlist items by matching the username and then passing it into the template
    user = User.objects.get(username=request.user)
    List = user.watchlist_set.all()    # gets the watchlist, market names by filtering on the basis of the userName
    
    
    if len(List) == 0:  # checking if the wathclist is empty so if it is empty then it returns the simple page without rendering the watchlist items
        
        form = WatchListForm()
        context = { 'stockMarket': stockMarket,  'form':form}    # context without wathclist
        return render(request, 'users/Hhome.html', context)

    else:
        for l in List:
            market_name = l.market.name    # reading the names of the markets that are added in the watchlist
            market_path = l.market.csv.path # getting the path of the matched market that are added in the watchlist
            dframe = pd.read_csv(market_path)  # reading the csv file of the matched market by using its path
            
        dataframe = dframe.head(1)
        df = dataframe.to_dict('records')    # converting the data into the dictonary so it can be easily passed and read in the html template
        
        # to make list
        # dlist = dataframe.values.tolist()
        

        # print(dframe['Open'].head())
        # print(market_name)

    # Stock Market List Form
    form = WatchListForm()

    # myFilter = MarketFilter(request.GET, queryset=stockMarket)
    # stockMarket = myFilter.qs
    myFilter = ''

    
    context = { 'stockMarket': stockMarket, 'watchlist':List, 'form':form , 
                'df': df,'myFilter':myFilter,
                }

    return render(request, 'users/Hhome.html', context)


# watchlist View that adds a market in the watchlist
@login_required(login_url='login')
def watchlist(request, userName):

    stockMarket = CsvFile.objects.all()  # getting the name of the Market

    # getting the added watchlist items by matching the username and then passing it into the template
    user = User.objects.get(username=request.user)
    List = user.watchlist_set.all()

    # Getting the selected market from the drop down menu in the template and then getting the model object by mathcing the name from the db
    result = request.POST['market']

    if len(List) == 0:
        print('Empty')        
        
        listItem = CsvFile.objects.get(name = result)
        # Adding the market name and userName in the database Watchlist
        listDetails = WatchList(user = user, market = listItem )
        listDetails.save()

        return redirect('home1')
    
    else:
        print('Not empty')

        for item in List:
            
            if item.market.name == result:
                print('already added')
                messages.info(request, 'Already Added.')                
                return redirect('home1')
                
        else:
            print('saved')
            
            listItem = CsvFile.objects.get(name = result)

            # Adding the market name and userName in the database Watchlist
            listDetails = WatchList(user = user, market = listItem )
            listDetails.save()

            return redirect('home1')
                    
    context = { 'stockMarket': stockMarket,
     'list': result,'watchlist':List }
    
    return render(request, 'users/Hhome.html', context)




# Remove Watchlist View
def removeWatchlist(request, pk):

    listItem = WatchList.objects.get( id = pk )

    if request.method == "POST":
       listItem.delete() 
       print(pk)
       return redirect('home1')

    
    return redirect('home1')


# About Page
# @login_required(login_url='login')
def about(request):
    
    return render(request, 'pages/about.html')
 

# merging pages views 
# Home Page for main app
@login_required(login_url='login')
def mainHome(request):

    # DIsplaying the Market Data List
    stockMarket = CsvFile.objects.all()   

    context = {'stockMarket': stockMarket} 

    return render(request, 'pages/home.html', context)


# contact us view
def contactUs(request):

    # getiing the form and assignint it to a variable that is passing in the context
    form = CreateUserForm()

    # Getting the data from the post request and validating it first then saving it in the database

    if request.method == 'POST':
        form = CreateUserForm(request.POST)
        if form.is_valid():
            user = form.save()   # saving the form and assigning it to a variable as a user object that has all the fields data that was in the form
            username = form.cleaned_data.get('username') # Getting the username from the submitted form
            group = Group.objects.get(name='user') # getting the user group from the created groups in the admin panel or django model/groups
            user.groups.add(group)
            messages.success(request, 'Account was created for ' + username)
            return redirect('login')

    context = {'form': form}


    return render(request, 'pages/contact.html', context)





# function for ajax call to get data for chart
def market_chart(request):

    if request.method == 'GET':
        labels = []
        data = []
        marketName = ''

        marketData = CsvFile.objects.get(name='CCL2')
        path = marketData.csv.path
        dframe = pd.read_csv(path)
        marketName = marketData.name
        
        # working with dictonary
        df = dframe.to_dict('records')

        for i in df:
            labels.insert(0,i['Date'])
            data.insert(0,i['Close'])

        context = {
            'labels':labels,
            'data': data,
            'name': marketName
        }
        
        return JsonResponse(context, safe=False)
    
    return JsonResponse( safe=False)
    

# Chartjs view to get the data for the chartjs display
def checkChart(request):


    if request.method == 'POST':
        market = request.POST.get("market", "")
        # marketName = request.POST.get("marketName", "")

        labels = []
        data = []
        marketName = ''

        marketData = CsvFile.objects.get(name=market)
        path = marketData.csv.path
        dframe = pd.read_csv(path)
        marketName = marketData.name


        # working with dictonary
        df = dframe.to_dict('records')

        for i in df:
            labels.insert(0,i['Date'])
            data.insert(0,i['Close'])


        print(market)

        context = {
            # 'market': market,
            # 'marketName': marketName,
            'labels':labels,
            'data': data,
            'name': marketName
        }

        return JsonResponse(context, safe=False)



































# User-Page
# @login_required(login_url='login')
# def userPage(request):
#     return redirect(request, 'users/Hhome.html')





# Upload CSV File data to Database
# def stockDataUpload(request):
#     template = 'home'

#     prompt = {
#         'order': 'ORDER of csv should be Date,Open,High,Low,Close,Adj_Close,Volume'
#     }

#     if request.method == "GET":
#         return render(request, 'users/home.html', prompt)
    

#     csv_file = request.FILES['file']

#     if not csv_file.name.endswith('.csv'):
#         messages.error(request, 'This is not a csv file')
    
#     data_set = csv_file.read().decode('UTF-8')
#     io_string = io.StringIO(data_set)
#     next(io_string)
#     for column in csv.reader(io_string, delimiter= ',' , quotechar="|"):
#         _, created = StockData.objects.update_or_create(
#             Date=column[0],
#             Open=column[1],
#             High=column[2],
#             Low=column[3],
#             Close=column[4],
#             Adj_Close=column[5],
#             Volume=column[6]
#         )

#     context = {}
#     return render(request, 'users/home.html', context)


# Uploading the csv file r data list in the media folder
# def upload_list(request):

#     if request.method == 'POST':
#         form = MarketForm(request.POST, request.FILES)
#         if form.is_valid():
#             form.save()
#             return redirect('market_list')
#     else:
#         form = MarketForm()



#     context = {'form': form}

#     return render(request, 'users/upload_list.html', context)    



# Displaying the market list 
# def market_list(request):

#     csvfiles = CsvFile.objects.all()

#     context = {'files': csvfiles}

#     df = pd.read_csv(r'media/markets/csvs/CCL.csv')
#     print(df.head())

    # Reading the csv File

    # checking things with files
    # for file in csvfiles:
    #     print(file.csv.name)
    #     print(file.csv.path)
    #     print(file.csv.url)


    # dframe = pd.read_csv(r'media/markets/csvs/CCL.csv')
    # a = dframe.head(1)
    # df = a.to_dict('records')
    # print(df)


    # return render(request, 'users/market_list.html', context)    