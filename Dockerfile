FROM alpine:3.12
RUN apk update && apk add py3-setuptools && \
    apk add py-pip && pip install django && \
    apk add python3-dev && apk add libc-dev && \
    apk add gcc && pip install django-admin 

#WORKDIR /opt/mysite/
#COPY ./mysite/ /opt/mysite/mysite
ADD ./mysite/ /opt/mysite/mysite

WORKDIR /opt/mysite/mysite
EXPOSE 8787
#CMD python3 manage.py runserver 8787
#CMD ["python3", "manage.py", "runserver", "8787"]
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8787"]

# I can get it to install and run, but I can't connect