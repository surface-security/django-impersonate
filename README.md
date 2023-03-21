# TEMP

middleware needs to come *AFTER* `django.contrib.auth.middleware.AuthenticationMiddleware`

package could be named `django-admin-impersonate` instead but it actually works for any django app using `django.contrib.auth`, not only django-admin

Missing a non-django-admin-specific utility to set the cookie
