from django import forms
from django.contrib import admin
from django.contrib.auth.models import Group
from django.contrib.auth.admin import UserAdmin
from django.contrib.auth.forms import ReadOnlyPasswordHashField

from .models import (Bitacora, Funcion, Rol, Usuario, InterfazUsuario)


class UserCreationForm(forms.ModelForm):
    password1 = forms.CharField(label='Password', widget=forms.PasswordInput)
    password2 = forms.CharField(label='Password confirmation',
                                widget=forms.PasswordInput)

    class Meta:
        model = Usuario
        fields = ('nombre', 'apellido', 'email', 'username', 'telefono',
                  'roles')

    def clean_password2(self):
        password1 = self.cleaned_data.get("password1")
        password2 = self.cleaned_data.get("password2")
        if password1 and password2 and password1 != password2:
            raise forms.ValidationError("password don't match")
        return password2

    def save(self, commit=True):
        user = super(UserCreationForm, self).save(commit=False)
        user.set_password(self.cleaned_data["password1"])
        if commit:
            user.save()
        return user


class UserChangeForm(forms.ModelForm):
    """A form for updating users. Includes all the fields on
    the user, but replaces the password field with admin's
    password hash display field.
    """
    password = ReadOnlyPasswordHashField()

    class Meta:
        model = Usuario
        fields = ('nombre', 'apellido', 'email', 'username', 'telefono', 
                  'password', 'is_admin', 'roles')

    def clean_password(self):
        return self.initial["password"]


class MyUserAdmin(UserAdmin):
    # The forms to add and change user instances
    form = UserChangeForm
    add_form = UserCreationForm

    # The fields to be used in displaying the User model.
    # These override the definitions on the base UserAdmin
    # that reference specific fields on auth.User.
    list_display = ('username', 'nombre', 'apellido', 'email', 'is_admin')
    list_filter = ('is_admin',)
    fieldsets = (
        (None, {'fields': ('username', 'nombre', 'apellido',
                           'email', 'password', 'telefono', 'roles',)}),
        ('Personal info', {'fields': ('nombre','apellido', 'email',
                                      'telefono',)}),
        ('Permissions', {'fields': ('is_admin',)}),
    )
    # add_fieldsets is not a standard ModelAdmin attribute. UserAdmin
    # overrides get_fieldsets to use this attribute when creating a user.
    add_fieldsets = (
        (None, {
            'classes': ('wide',),
            'fields': ('username', 'nombre', 'apellido', 'email', 'telefono',
                       'password1', 'password2',)}),
    )
    search_fields = ('username',)
    ordering = ('username',)
    filter_horizontal = ()

# Register your models here.
admin.site.register(Bitacora)
admin.site.register(Funcion)
admin.site.register(Rol)
admin.site.register(Usuario, MyUserAdmin)
admin.site.register(InterfazUsuario)
# admin.site.register(UsuarioRol)
# admin.site.register(RolFuncion)
# admin.site.register(FuncionUI)
