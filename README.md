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
* Set the Docker Server IP address(*) and the Logo URL of your facility
```bash
$ sh setup.sh
```
* add IP and web-front hostname
```bash
# edit etc/hosts
$ vim /etc/hosts
X.X.X.X web-front
# start up service with
$ docker-compose build
$ docker-compose up
```
Where X.X.X.X is the IP from the machine which docker-compose is running.

Now, you can access to ```http://web-front``` to view the application 

## Proposals/Sessions
* Don't forget to log in using calipso1/calipso1 first.

```bash
$ cd scripts/manage
$ sh populate_calipso1.sh # insert experiments an sessions to user calipso1
```
## Docker as a service
* In the docker server, docker has to run as a service
```
https://docs.docker.com/install/linux/linux-postinstall/#control-where-the-docker-daemon-listens-for-connections
```
