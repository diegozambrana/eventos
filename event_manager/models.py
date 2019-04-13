from __future__ import unicode_literals

from django.db import models

# BASE EVENTOS.
class Lugar(models.Model):
    nombre = models.CharField(max_length=250)
    direccion = models.CharField(max_length=250)

    def __unicode__(self):
        return "%s - %s" % (self.nombre, self.direccion)


class TipoEvento(models.Model):
    tipo = models.CharField(max_length=100)

    def __unicode__(self):
        return self.tipo


class Evento(models.Model):
    tipo_evento = models.ForeignKey('TipoEvento')
    lugar = models.ForeignKey('Lugar')
    inicio = models.DateTimeField()
    fin = models.DateTimeField()

    def __str__(self):
        return "%s|%s|%s|%s" % (self.tipo_evento.tipo, self.lugar.nombre,
                                str(self.inicio), str(self.fin))

    def __unicode__(self):
        return ("%s - %s - %s") % (self.tipo_evento.tipo,
                                   self.lugar.nombre,
                                   self.inicio)

#FIESTA
class TipoFiesta(models.Model):
    tipo = models.CharField(max_length=250)
    
    def __unicode__(self):
        return self.tipo


class Fiesta(models.Model):
    evento = models.OneToOneField('Evento', primary_key=True)
    tipo_fiesta = models.ForeignKey('TipoFiesta')

    def __str__(self):
        return "%d|%s" % (self.evento.id, self.tipo_fiesta.tipo)
    
    def __unicode__(self):
        return ("%s - %s - %s") % (self.tipo_fiesta.tipo,
                                   self.evento.tipo_evento.tipo,
                                   self.evento.lugar.nombre)


#CONTRATOS Y CLIENTES
class Persona(models.Model):
    nombre = models.CharField(max_length=100)
    apellido = models.CharField(max_length=100)
    ci = models.IntegerField()
    
    def __str__(self):
        return "%s|%s|%d" % ( self.nombre, self.apellido, self.ci)

    def __unicode__(self):
        return "%s %s - %d" % (self.apellido, self.nombre, self.ci)


class Cliente(models.Model):
    persona = models.OneToOneField('Persona', primary_key=True)
    nit = models.IntegerField()

    def __str__(self):
        return "%s %s|%d" % (self.persona.nombre, self.persona.apellido,
                             self.nit)

    def get_name(self):
        return "%s %s" % (self.persona.nombre, self.persona.apellido)

    def __unicode__(self):
        return "%s %s - %d" % (self.persona.apellido,
                               self.persona.nombre,
                               self.nit)


class Contrato(models.Model):
    evento = models.OneToOneField('Evento')
    cliente = models.ForeignKey('Cliente')
    costo_total = models.DecimalField(max_digits=10, decimal_places=2)
    a_cuenta = models.DecimalField(max_digits=10, decimal_places=2)
    saldo = models.DecimalField(max_digits=10, decimal_places=2)
    fecha = models.DateField(auto_now=True)

    class Meta:
        unique_together = (("evento", "cliente"),)
    
    def __str__(self):
        return "%d|%s|%s|%s|%s|%s" % (self.evento.id, self.cliente.get_name(),
                                   str(self.costo_total), str(self.a_cuenta),
                                   str(self.saldo), str(self.fecha))

    def __unicode__(self):
        return "%s - %s - %s" % (self.evento, self.cliente.persona.nombre,
                                 self.fecha)


# EXPOSICIONES
class TipoExposicion(models.Model):
    tipo = models.CharField(max_length=100)

    def __unicode__(self):
        return self.tipo


class Exposicion(models.Model):
    evento = models.OneToOneField('Evento', primary_key=True)
    tipo_exposicion = models.ForeignKey('TipoExposicion')
    titulo = models.CharField(max_length=255)
    descripcion = models.TextField()

    def __str__(self):
        return "%s|%s|%s|%s" % (str(evento.evento.id),
                                self.tipo_exposicion.tipo, self.titulo,
                                self.descripcion)

    def __unicode__(self):
        return "%s - %s" % (self.titulo, self.tipo_exposicion.tipo)

class Artista(models.Model):
    persona = models.OneToOneField('Persona', primary_key=True)
    nombre_artistico = models.CharField(max_length=255)
    biografia = models.TextField()

    def __unicode__(self):
        return self.nombre_artistico

class Expone(models.Model):
    exposicion = models.ForeignKey('Exposicion')
    artista = models.ForeignKey('Artista')

    class Meta:
        unique_together = (("exposicion", "artista"),)

    def __unicode__(self):
        return "%s - %s" % (self.exposicion.titulo,
                            self.artista.nombre_artistico)


#CONCIERTO
class Concierto(models.Model):
    evento = models.OneToOneField('Evento', primary_key=True)
    titulo = models.CharField(max_length=255)
    
    def __str__(self):
        return "%s|%s" % (str(self.evento.id), self.titulo)

    def __unicode__(self):
        return self.titulo


class EstiloMusical(models.Model):
    estilo = models.CharField(max_length=100)

    def __unicode__(self):
        return self.estilo


class Banda(models.Model):
    nombre = models.CharField(max_length=255)
    descripcion = models.TextField()
    estilo = models.ForeignKey('EstiloMusical')

    def __unicode__(self):
        return self.nombre


class Presentacion(models.Model):
    banda = models.ForeignKey('Banda')
    concierto = models.ForeignKey('Concierto') 
    
    class Meta:
        unique_together = (("banda", "concierto"),)

    def __unicode__(self):
        return "%s - %s" % (self.concierto.titulo, self.banda.nombre)
