# python-django

A sample Python Django application.

I am using the sample Django app
<https://docs.djangoproject.com/en/3.1/intro/tutorial01/>

I am also going to build and deploy this using Docker.
<https://code.visualstudio.com/docs/containers/quickstart-python>

## Docker setup

Docker doesn't ship with bash, so either run ash or sh.

docker run -it alpine /bin/ash

### RUN

These are the commands needed to get the packages and dependencies on the VM for the project.

### project setup

django-admin startproject mysite
cd mysite
python manage.py runserver 8787
