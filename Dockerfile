FROM python:3.7-alpine
MAINTAINER Shaojun Zhu

ENV PYTHONUNBUFFERED 1

COPY ./pip.conf /etc/pip.conf
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
