from django.db import models  
from django.forms.models import ModelForm  
from django.forms.widgets import CheckboxSelectMultiple  
from django.contrib.admin.widgets import FilteredSelectMultiple
from ww.menu.models import  Menu

  
class MenuForm(ModelForm):  
      
    class Meta:  
        model = Menu  
        fields = ("complemento")  
               
    def __init__(self, *args, **kwargs):  
          
        super(MenuForm, self).__init__(*args, **kwargs)  
          
        self.fields["complemento"].widget = CheckboxSelectMultiple()  
        self.fields["complemento"].queryset = complemento.objects.all() 