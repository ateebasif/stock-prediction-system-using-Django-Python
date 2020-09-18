import django_filters
from django_filters import DateFilter, CharFilter

from .models import *

# Filter used for seach through the market data lists
class MarketFilter(django_filters.FilterSet):
    
    note = CharFilter(field_name='name', lookup_expr= 'icontains')
    
    class Meta:
        models = CsvFile
        fields = ['name']
