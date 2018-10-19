FROM python:3.5-alpine
 ENV PYTHONUNBUFFERED 1  
 
 RUN apk update && \
     apk add --virtual build-deps gcc python-dev musl-dev && \
     apk add bash && apk add libffi-dev &&\
     apk add mariadb-dev && apk add tree
 
 ENV DJANGO_SETTINGS_MODULE=calipsoplus.settings_docker

 RUN mkdir /config 
 ADD /config/database/ /secret/
 RUN mkdir /logs  
 RUN pip install --upgrade setuptools
 RUN mkdir /src
 ADD /backend/calipsoplus-backend/ /src/
 RUN pip install -r /src/requirements.txt
 
 WORKDIR /src

