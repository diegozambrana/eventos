from __future__ import unicode_literals

from django.db import models
from django.contrib.auth.models import BaseUserManager, AbstractBaseUser

class Bitacora(models.Model):
    usuario = models.ForeignKey('Usuario')
    fecha_hora = models.DateTimeField(auto_now=True)
    # pid = models.IntegerField()
    ip = models.CharField(max_length=100)
    evento = models.CharField(max_length=100)
    dato_viejo = models.TextField()
    dato_nuevo = models.TextField()
    tabla  = models.CharField(max_length=100)
    
    def __unicode__(self):
        return "%s - %s - %s - %s - %s" % (self.usuario.nombre, self.evento, self.tabla,
                                 self.dato_viejo, self.dato_nuevo)


class MyUserManager(BaseUserManager):
    def create_user(self, username, password, nombre=None, apellido=None,
                    email=None, telefono=None):
        if not username:
            raise ValueError('User may have a Username')
        email_normalized = MyUserManager.normalize_email(email)
        user = self.model(nombre=nombre,
                          apellido=apellido,
                          username=email_normalized,
                          email=email_normalized,
                          telefono=telefono)
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, username, password, nombre=None, apellido=None,
                         email=None, telefono=None):
        email_normalized = MyUserManager.normalize_email(username)
        user = self.create_user(username,
                                password=password,
                                nombre="name",
                                apellido="appe",
                                email=username,
                                telefono=123456)
        user.is_admin = True
        user.save(using=self._db)
        return user

class Usuario(AbstractBaseUser):
    nombre = models.CharField(max_length=100)
    apellido = models.CharField(max_length=100)
    telefono = models.IntegerField()
    username = models.CharField(unique=True, max_length=50)
    email = models.EmailField(unique=True, max_length=255)
    
    create_at = models.DateTimeField(auto_now=True)
    update_at = models.DateTimeField(auto_now_add=True)
    is_active = models.BooleanField(default=True)
    is_admin = models.BooleanField(default=False)

    objects = MyUserManager()

    USERNAME_FIELD = 'username'
    REQUIERED_FIELDS = ['email']

    roles = models.ManyToManyField('Rol')
    
    def get_short_name(self):
        return self.username
    
    def get_full_name(self):
        return self.username

    def has_perm(self, perm, obj=None):
        return True

    def has_module_perms(self, app_label):
        return True
    
    @property
    def is_staff(self):
        return self.is_admin

    def __unicode__(self):
        return "%s %s - %s" % (self.nombre, self.apellido, str(self.telefono))



class Funcion(models.Model):
    nombre = models.CharField(max_length=100)
    ui = models.ManyToManyField('InterfazUsuario')
    def __unicode__(self):
        return self.nombre


class Rol(models.Model):
    nombre = models.CharField(max_length=100)
    funciones = models.ManyToManyField('Funcion')
    def __unicode__(self):
        return self.nombre


class InterfazUsuario(models.Model):
    nombre = models.CharField(max_length=100)

    def __unicode__(self):
        return self.nombre
