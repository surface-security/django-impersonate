# django-impersonate

WIP

## Setup

Add middleware to your middleware list and make sure it comes *after* `django.contrib.auth.middleware.AuthenticationMiddleware`:

```python
MIDDLEWARE = [
    ...
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    ...
    'impersonate.middleware.ImpersonateMiddleware',
    ...
]
```

In one of your `admin.py` files, add the action to `UserAdmin` (or the admin model of your custom User)

```python
from impersonate.admin import impersonate_action
from django.contrib.auth import admin


admin.UserAdmin.actions.append(impersonate_action)
```

Or call it from any of your views (if you're not using django-admin)

```python
from django.contrib.auth import models
from impersonate.admin import impersonate_action

def my_view(request, target_username):
    return impersonate_action(None, request, models.User.objects.filter(username=target_username))
```
