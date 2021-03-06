FROM python:3.5-alpine

ENV PYTHONUNBUFFERED 1  
 
RUN apk update && \
     apk add --virtual build-deps gcc python-dev musl-dev && \
     apk add bash && apk add libffi-dev &&\
     apk add mariadb-dev && apk add tree
 
ENV DJANGO_SETTINGS_MODULE=calipsoplus.settings_docker

RUN mkdir /config 
ADD /config/ /config/

RUN mkdir /logs  
RUN mkdir /src

ADD /backend/calipsoplus-backend/ /src/

COPY ./backend/calipsoplus-backend/calipsoplus/settings_docker.py.example /src/calipsoplus/settings_docker.py
COPY ./backend/calipsoplus-backend/calipsoplus/settings_calipso.py.example /src/calipsoplus/settings_calipso.py

RUN pip install -r /src/requirements.txt

WORKDIR /src
