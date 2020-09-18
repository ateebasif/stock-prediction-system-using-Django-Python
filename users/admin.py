from django.contrib import admin

# Register your models here.

from .models import *


admin.site.register(WatchList)
admin.site.register(StockData)
admin.site.register(CsvFile)
admin.site.register(UserProfile)