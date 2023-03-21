from impersonate.admin import impersonate_action
from django.contrib.auth import admin as auth_admin


auth_admin.UserAdmin.actions.append(impersonate_action)
