from django.contrib import admin
from .models import (Lugar, TipoEvento, Evento, TipoFiesta, Fiesta, Persona,
                     Cliente, Contrato, TipoExposicion, Exposicion, Artista,
                     Expone, Concierto, EstiloMusical, Banda, Presentacion)
# Register your models here.

admin.site.register(Lugar)
admin.site.register(TipoEvento)
admin.site.register(Evento)
admin.site.register(TipoFiesta)
admin.site.register(Fiesta)
admin.site.register(Persona)
admin.site.register(Cliente)
admin.site.register(Contrato)
admin.site.register(TipoExposicion)
admin.site.register(Exposicion)
admin.site.register(Artista)
admin.site.register(Expone)
admin.site.register(Concierto)
admin.site.register(EstiloMusical)
admin.site.register(Banda)
admin.site.register(Presentacion)
