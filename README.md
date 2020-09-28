# python-django

A sample Python Django application.

I am using the sample Django app
<https://docs.djangoproject.com/en/3.1/intro/tutorial01/>

I am also going to build and deploy this using Docker.
<https://code.visualstudio.com/docs/containers/quickstart-python>

## Docker setup

Docker doesn't ship with bash, so either run ash or sh.

docker run -it alpine /bin/ash

### project setup

django-admin startproject mysite
cd mysite
python manage.py runserver 8787

The dev work is then done inside that project directory.


### Docker commands

if a build is out of space use 
docker system prune
tags can have versions ie polls:1.0

docker run polls [command]
docker run polls ls -lR /opt/mysite/

docker build --tag polls .
docker run --publish 8787:8787 --detach --name ptest polls

docker ps
docker stop ptest
docker rm ptest