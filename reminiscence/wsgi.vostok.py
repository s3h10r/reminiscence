"""
WSGI config for helloworld project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/2.0/howto/deployment/wsgi/
"""

import os

from django.core.wsgi import get_wsgi_application

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "helloworld.settings")

application = get_wsgi_application()

# --- enable web debugger (wdb) - dead slow on RPi so disabled by default
#from wdb.ext import WdbMiddleware
#application = WdbMiddleware(application)
