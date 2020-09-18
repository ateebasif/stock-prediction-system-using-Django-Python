from django.urls import path
from . import views

# For password Reset
from django.contrib.auth import views as auth_views

urlpatterns = [
    path('', views.about, name="about"),
    path('home/', views.home, name="home"),
    path('home1/', views.home1, name="home1"),

    # Algo URLS
    path('arima/', views.arima1, name="arima"),
    path('prophet/', views.fbprophet1, name="prophet"),
    path('lstm/', views.lstm1, name="lstm"),
    
    # path('products/', views.products, name="products"),
    # path('customer/<str:pk_test>/', views.customers, name="customer"),

    path('register/', views.registerPage, name="register"),
    path('login/', views.loginPage, name="login"),
    path('logout/', views.logoutUser, name="logout"),
    
    # Watchlist urls that add a market in the watchlist or remove a market from the watchlist
    path('watchlist/<str:userName>/', views.watchlist, name="watchlist"),
    path('removeWatchlist/<str:pk>/', views.removeWatchlist, name = "removeWatchlist"),

    # csv file paths
    # path('markets/', views.market_list, name = "market_list"),
    # path('markets/upload', views.upload_list, name = "upload_list"),
    path('view_marketData/<int:pk>/', views.view_marketData, name = "view_marketData"),
    path('markets/<int:pk>/', views.delete_market, name = "delete_market"),
    # path('stockDataUpload', views.stockDataUpload, name='stockDataUpload'),

    # VIEW users url and managing users like update and delet user, url paths
    path('view_users/', views.view_users, name="view_users"),
    path('update_user/<str:pk>/', views.update_user, name="update_user"),
    path('delete_user/<str:pk>/', views.delete_user, name="delete_user"),

    path('about/', views.about, name="about"),

    # prediction result of market chart using chartjs
    path('market_chart/', views.market_chart, name="market_chart"),
    path('checkChart/', views.checkChart, name="checkChart"),



    # Merging pages urls
    path('mainHome/', views.mainHome, name="mainHome"),
    path('contactUs/', views.contactUs, name="contactUs"),





    # Password Reset urls views
    path('reset_password/', 
    auth_views.PasswordResetView.as_view(template_name="users/password_reset.html"), 
    name="reset_password"),

    path('reset_password_sent/',
    auth_views.PasswordResetDoneView.as_view(template_name="users/password_reset_sent.html"), 
    name="password_reset_done"),

    path('reset/<uidb64>/<token>/',
    auth_views.PasswordResetConfirmView.as_view(template_name="users/password_reset_form.html"), 
    name="password_reset_confirm" ),

    path('reset_password_complete/',
    auth_views.PasswordResetCompleteView.as_view(template_name="users/password_reset_done.html"), 
    name="password_reset_complete"),

]


# 1 - Submit email form                       PasswordResetView.as_view()
# 2 - Email sent success message              PasswordResetDoneView.as_view()
# 3 - Link to Password Reset form in email    PasswordResetConfirmView.as_view()
# 4 - Password successfully changed message   PasswordResetCompleteView.as_view() 