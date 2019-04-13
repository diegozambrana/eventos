from django.conf.urls import patterns, url


urlpatterns = patterns(
    'account.views',
    url(r'^login/$', 'login_view',name='login'),
    url(r'^logout/$', 'logout_view',name='logout'),
    url(r'^$', 'index_view',name='index'),
    url(r'^api/registrar_cliente/', 'registrar_cliente',
        name="registrar_cliente"),
    url(r'^api/registrar_fiesta/', 'registrar_fiesta',
        name="registrar_fiesta"),
)
