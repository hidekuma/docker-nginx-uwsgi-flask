FROM ubuntu:16.04

MAINTAINER Hidekuma<d.hidekuma@gmail.com>

RUN mkdir -p /etc/docker

RUN apt-get update && apt-get install -y python python-dev python-pip
COPY ./ /var/www/hidekuma.com 
WORKDIR /var/www/hidekuma.com
COPY ./dockerfiles/etc/uwsgi/webserver.ini /etc/uwsgi/webserver.ini
RUN pip install -r requirements.txt

