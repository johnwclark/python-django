FROM alpine:3.12
RUN apk update && apk add py3-setuptools && \
    apk add py-pip && pip install django && \
    apk add python3-dev && apk add libc-dev && \
    apk add gcc && pip install django-admin 

# there is no WORKDIR, we are doing an explicit directory cp
COPY mysite /opt/mysite/

WORKDIR /opt/mysite/
EXPOSE 8787
CMD python3 manage.py runserver 8787

# I can get it to install and run, but I can't connect