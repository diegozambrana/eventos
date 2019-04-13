from django.http import HttpResponseRedirect
from django.shortcuts import render, render_to_response, RequestContext

from rest_framework import viewsets, permissions
from rest_framework.decorators import api_view, permission_classes, parser_classes
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from rest_framework.parsers import FormParser, MultiPartParser, FileUploadParser

from .conexion import Conexion

c = Conexion()

def login_view(request):
    global c
    username = password = ''
    if request.POST:
        username = request.POST['username']
        password = request.POST['password']
        data = {
                'username': username,
                'password': password
            }
        if c.login(data):
            return HttpResponseRedirect('/')
        
        # logger.info("use = %s" % user)
        """
        if user is not None:
            if user.is_active:
                login(request, user)
                return HttpResponseRedirect('/')
        """
    return render_to_response('login.html',\
        context_instance=RequestContext(request))

def logout_view(request):
    global c
    c.logout()
    return HttpResponseRedirect('/')

def index_view(request):
    global c
    if c.user is not None:
        ctx = {
                'usuario': c.user,
                'tipoEvento': c.get_tipo_evento(),
                'tipoFiesta': c.get_tipo_fiestas(),
                'personas': c.get_personas(),
                'lugares': c.get_lugares()
                }
        return render_to_response('index.html', context_instance=RequestContext(request, ctx))
    else:
        return HttpResponseRedirect('/login/')

@api_view(['POST'])
def registrar_cliente(request):
    global c
    if request.data:
        data = {
                'nombre': request.data['nombre'],
                'ci': request.data['ci'],
                'nit': request.data['nit']
            }
        if c.registrar_cliente(data):
            return Response({'comment': "El Cliente ha sido creado",
                             'data': data}, status=201)
        else:
            return Response({'comment': "ERROR"}, status=400)

@api_view(['POST'])
def registrar_fiesta(request):
    global c
    print "REGISTRAR FIESTA+++++++++++++++++++++++++++++++++++++++++++++++++"
    print str(request.data)
    if request.data:
        fiesta_data = {
                'id_lugar': str(request.data['lugar']),
                'id_tipo_evento': str(request.data['tipo_evento']),
                'fecha_hora_inicio': request.data['inicio'],
                'fecha_hora_fin': request.data['fin'],
                'tipo_fiesta': request.data['tipo_fiesta']
            }
        id_evento = c.registrar_fiesta(fiesta_data)
        if id_evento is not None:
            contrato_data = {
                    'id_evento': id_evento[0],
                    'id_persona': request.data['id_persona'],
                    'costo_total': request.data['costo_total'],
                    'a_cuenta': request.data['a_cuenta'],
                    'saldo': request.data['saldo'],
                    'fecha': request.data['fecha']
                }
            if c.registrar_contrato(contrato_data):
                return Response({'comment': "El Cliente ha sido creado",
                             'data': request.data}, status=201)
            else:
                return Response({'comment': "ERROR registrar contrato"}, status=400)
        else:
            return Response({'comment': "ERROR registrar evento"}, status=400)
    else:
        return Response({'comment': "NO DATA"}, status=500)

