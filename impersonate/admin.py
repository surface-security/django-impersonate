from django.shortcuts import HttpResponseRedirect
from django.contrib import admin
from .middleware import COOKIE_NAME


@admin.action(description='Impersonate selected user')
def impersonate_action(modeladmin, request, queryset):
    # FIXME temporary method - this needs to check for permissoins and if only one user is selected
    # waiting on the existing code to add here
    response = HttpResponseRedirect('/')
    response.set_cookie(COOKIE_NAME, queryset.first().username)
    return response
