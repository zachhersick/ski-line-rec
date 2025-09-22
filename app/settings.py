SECRET_KEY = 'dev'
DEBUG = True
ALLOWED_HOSTS = []
INSTALLED_APPS = ['django.contrib.contenttypes','django.contrib.staticfiles']
ROOT_URLCONF = 'app.urls'
MIDDLEWARE = []
TEMPLATES = [{
 'BACKEND':'django.template.backends.django.DjangoTemplates',
 'DIRS':['app/templates'],
 'APP_DIRS':True,
 'OPTIONS':{},
}]
STATIC_URL = '/static/'
