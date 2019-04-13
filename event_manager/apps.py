from __future__ import unicode_literals

from django.apps import AppConfig


class EventManagerConfig(AppConfig):
    name = 'event_manager'
    verbose_name = 'Gestor de Eventos'

    def ready(self):
        import event_manager.signals
