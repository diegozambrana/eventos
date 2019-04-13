from django.db.models.signals import pre_save, post_save
from django.dispatch import receiver
from django.conf import settings
from account.models import (Usuario, Bitacora)

from django.contrib.auth.models import User

from .models import (Contrato, Persona, Cliente, Evento, Fiesta, Exposicion, 
                     Concierto)

import os.path
import socket

old = ""
new = ""
table = ""


def get_user():
    print "get_user()"
    user = None
    for u in Usuario.objects.all():
        if u.is_authenticated():
            user = u
            break
    print(str(user))
    return user


def escribir_bitacora():
    print "escribir_bitacora()"
    global old
    global new
    global table
    b = Bitacora()
    b.usuario = get_user()
    b.ip = socket.gethostbyname(socket.gethostname())
    if old is "":
        b.evento = "create"
    else:
        b.evento = "update"
    b.dato_viejo = old
    b.dato_nuevo = new
    b.tabla = table
    b.save()
    old = ""
    new = ""
    table = ""


@receiver(pre_save, sender=Contrato)
@receiver(pre_save, sender=Persona)
@receiver(pre_save, sender=Cliente)
@receiver(pre_save, sender=Evento)
@receiver(pre_save, sender=Fiesta)
@receiver(pre_save, sender=Exposicion)
@receiver(pre_save, sender=Concierto)
def pre_change(sender=None, **kwargs):
    global old
    print "pre_change"
    if kwargs['instance'] is not None:
        print "no is NONE"
        obj = kwargs['instance'].__class__
        ins = kwargs['instance']
        if obj.objects.filter(pk=ins.id).exists():
            old = str(obj.objects.filter(pk=ins.id)[0])
        print "pre_change()"

@receiver(post_save, sender=Contrato)
@receiver(post_save, sender=Persona)
@receiver(post_save, sender=Cliente)
@receiver(post_save, sender=Evento)
@receiver(post_save, sender=Fiesta)
@receiver(post_save, sender=Exposicion)
@receiver(post_save, sender=Concierto)
def post_change(sender=None, **kwargs):
    global new
    global table
    new = str(kwargs['instance'])
    table = kwargs['instance'].__class__.__name__
    escribir_bitacora()
    print "post_change()"
    print kwargs['instance'] #str(sender)

