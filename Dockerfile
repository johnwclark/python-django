FROM alpine:3.12
RUN apk update && apk add py3-setuptools && \
    apk add py-pip && pip install django && \
    django-admin startproject helloworld 


#WORKDIR /opt/hello
#COPY Makefile hello.cpp  /opt/hello/
#RUN make
#
#WORKDIR /opt/hello
#CMD ./hello
