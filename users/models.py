from django.db import models
from django.contrib.auth.models import User


# Model to upload the csv files of historical market data
class CsvFile(models.Model):
    name =  models.CharField(max_length = 100, null=True)
    csv = models.FileField(upload_to = 'markets/csvs/')

    def __str__(self):
        return self.name

    def delete(self, *args, **kwargs):
        self.csv.delete()
        super().delete(*args, **kwargs)

    


# Model for the watchlist
class WatchList(models.Model):
    
    user = models.ForeignKey(User, null=True, on_delete= models.CASCADE)     # CASCADE is used if you delete the parent table field it will delete the child field too
    market = models.ForeignKey(CsvFile, null=True, on_delete= models.CASCADE)
    date_created = models.DateTimeField(auto_now_add=True, null=True)



# Model for userProfile
class UserProfile(models.Model):
    user = models.OneToOneField(User, null=True, blank=True, on_delete=models.CASCADE)
    first_name = models.CharField(max_length = 100, null=True)
    last_name = models.CharField(max_length = 100, null=True)
    username = models.CharField(max_length=200, null=True)    
    email = models.CharField(max_length = 100, null = True)

    def __str__(self):
        return self.username


    
# Model for the stockdata view in the web app 
class StockData(models.Model):
    Date = models.CharField(max_length = 100, null=True)
    Open = models.CharField(max_length = 100, null=True)
    High = models.CharField(max_length = 100, null=True)
    Low = models.CharField(max_length = 100, null=True)
    Close = models.CharField(max_length = 100, null=True)
    Adj_Close = models.CharField(max_length = 100, null=True)
    Volume = models.CharField(max_length = 100, null=True)
