from django import forms

class cabelmolinoform(forms.ModelForm):
    historia = forms.CharField( widget=forms.Textarea )
    mision = forms.CharField( widget=forms.Textarea )
    vision = forms.CharField( widget=forms.Textarea )
    direccion = forms.CharField( widget=forms.Textarea )
    telefono = forms.CharField( widget=forms.Textarea )
    correo = forms.CharField( widget=forms.Textarea )
    mapa = forms.CharField( widget=forms.Textarea )
    class Meta:
        model = elmolino

class elmolino_admin(admin.ModelAdmin):
    form = cabelmolinoform
