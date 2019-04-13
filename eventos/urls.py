from django.conf import settings
from django.conf.urls import include, url
from django.contrib import admin
from django.conf.urls.static import static

urlpatterns = [
    url(r'^admin/', include(admin.site.urls)),
    # account and event manager
    url(r'', include('account.urls')),
    url(r'', include('event_manager.urls')),
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
