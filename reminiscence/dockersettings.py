"""
Django settings for reminiscence project.

Generated by 'django-admin startproject' using Django 2.0.6.

For more information on this file, see
https://docs.djangoproject.com/en/2.0/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/2.0/ref/settings/
"""

import os
import re

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/2.0/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!

SECRET_KEY = '<Enter Secret Key Here>'

# SECURITY WARNING: don't run with debug turned on in production!

DEBUG = False

ALLOWED_HOSTS = ['*']


LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'formatters': {
        'verbose': {
            'format': '%(levelname)s | %(asctime)s | %(module)s | %(message)s',
            'datefmt': '%m/%d/%Y %I:%M:%S %p',
        },
        'simple': {
            'format': '%(levelname)s %(message)s'
        },
    },
    'filters': {
        'require_debug_false': {
            '()': 'django.utils.log.RequireDebugFalse',
        },
    },
    'handlers': {
        'file': {
            'level':'DEBUG',
            'class':'logging.handlers.RotatingFileHandler',
            'formatter': 'verbose',
            'filename': os.path.join(BASE_DIR, 'logs', 'reminiscence.log'),
            'maxBytes': 1024*1024*10,
            'backupCount': 5,
        },
    },
    'loggers': {
        'django.server': {
            'handlers': ['file'],
            'level': 'DEBUG',
            'propagate': True,
        },
        'reminiscence': {
            'handlers': ['file'],
            'level': 'DEBUG',
            'propagate': True,
        },
    }
}


# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'pages',
    'accounts',
    'widget_tweaks',
    'vinanti',
    'rest_framework',
    'rest_framework.authtoken',
    'restapi'
]

REST_FRAMEWORK = {
    'DEFAULT_AUTHENTICATION_CLASSES': [
        'rest_framework.authentication.TokenAuthentication',
        'rest_framework.authentication.SessionAuthentication'
    ],
}

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'reminiscence.urls'

# Add root url location, keep it blank or add location ex: /bookmark

ROOT_URL_LOCATION = ''

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [
            os.path.join(BASE_DIR, 'templates')
        ],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'reminiscence.wsgi.application'


# Database
# https://docs.djangoproject.com/en/2.0/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': os.environ.get('POSTGRES_NAME','postgres'),
        'USER': os.environ.get('POSTGRES__USER','postgres'),
        'PASSWORD': os.environ.get('POSTGRES_PASSWORD','password'),
        'HOST': os.environ.get('DB_HOST','db'),
        'PORT': os.environ.get('DB_PORT',5432),
    }
}

# Password validation
# https://docs.djangoproject.com/en/2.0/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/2.0/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/2.0/howto/static-files/

STATIC_URL = '/static/'

STATIC_ROOT = os.path.join(BASE_DIR, 'static')

FAVICONS_STATIC = os.path.join(BASE_DIR, 'static', 'favicons')

DEFAULT_FAVICON_PATH = os.path.join(BASE_DIR, 'static', 'archive.svg')

LOGOUT_REDIRECT_URL = 'home'

LOGIN_REDIRECT_URL = 'home'

LOGIN_URL = 'login'

RANGE_REGEX = re.compile(r'bytes\s*=\s*(\d+)\s*-\s*(\d*)', re.I)

# Expiry Limit for Archived Public Media link in hours

VIDEO_ID_EXPIRY_LIMIT = 24

# Maximum items allowed in Public Playlist

VIDEO_PUBLIC_LIST = 1000

ARCHIVE_LOCATION = os.path.join(BASE_DIR, 'archive')

TMP_LOCATION = os.path.join(BASE_DIR, 'tmp')

USER_AGENT = 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:60.0) Gecko/20100101 Firefox/60.0'

NLTK_DATA_PATH = os.path.join(BASE_DIR, 'static', 'nltk_data')

USE_CELERY = False
BROKER_URL = 'redis://localhost:6379'
CELERY_RESULT_BACKEND = 'redis://localhost:6379'
CELERY_ACCEPT_CONTENT = ['application/json']
CELERY_TASK_SERIALIZER = 'json'
CELERY_RESULT_SERIALIZER = 'json'
CELERY_TIMEZONE = 'UTC'

USE_XVFB = False
ALLOW_ANY_ONE_SIGNUP = False

# Vinanti Multiprocess Settings for background tasks

MULTIPROCESS_VINANTI = False
MULTIPROCESS_VINANTI_MAX_REQUESTS = 4

# Vinanti async HTTP client settings

VINANTI_BACKEND = 'aiohttp'
VINANTI_MAX_REQUESTS = 50

DOWNLOAD_MANAGERS_ALLOWED = ['curl', 'wget']

#Path to chromium executable or name of executable.
#In some distro like ubuntu name of chromium executable is "chromium-browser".
#So write it accordingly
CHROMIUM_COMMAND = "chromium"

CHROMIUM_SANDBOX = False
