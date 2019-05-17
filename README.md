# Calipsoplus dockerized app

* This is the main file which required for the ```CalipsoPlus``` portal.

**IMPORTANT:** This is only intended to be a demonstration system, not to be used for actual production.

## Prepare
* Get latest source
```bash
$ git clone https://github.com/Calipsoplus/calipso-docker-demo.git
```

## Folders organization
* Folders tree

```bash
/.
├───backend             <-- here you have to clone the backend project
├───config
│   ├───auth            <-- auth credentials for the API
│   ├───secrets         <-- unique key for the application
│   └───nginx           <-- nginx proxy configuration
├───frontend            <-- here you have to clone the frontend project
├───mock-login          <-- here you have to clone the mock-login service
└───scripts
    ├───guacamole       <-- http file to access guacamole session
    ├───help            <-- shell scripts
    ├───manage          <-- to import external data
    └───mysql           <-- sql scripts
```

## Clone source
* Now you have to clone all source

```bash
$ cd backend
$ git clone https://github.com/Calipsoplus/calipsoplus-backend.git
$ cd ..
$ cd frontend
$ git clone https://github.com/Calipsoplus/calipsoplus-frontend.git
$ cd ..
$ cd mock-login
$ git clone https://github.com/Calipsoplus/calipsoplus-local-login-mock.git
$ cd ..
```

## Run Setup
* To put the IP from docker machine and logo from facility
```bash
$ sh setup.sh
# edit etc/hosts
$ vim /etc/hosts
# add IP and web-front hostname
X.X.X.X web-front
# start up service with
$ docker-compose build
$ docker-compose up
```
Where X.X.X.X is the IP from the machine which docker-compose is running.

Now, you can access to ```http://web-front``` to view the application 

## Proposals/Sessions
* Once you have been logged with calipso1 as username, then you can add to him some proposals/sessions. 
* To add these data you can use the next script.

```bash
$ cd scripts/manage
$ sh populate_calipso1.sh # insert experiments an sessions to user calipso1
```
