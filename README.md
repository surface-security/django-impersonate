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