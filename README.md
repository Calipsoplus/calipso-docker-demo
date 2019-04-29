# Calipsoplus dockerized app

This is the main file which required for the ```CalipsoPlus``` portal.

**IMPORTANT:** This is only intended to be a demonstration system, not to be used for actual production.

## Prepare
Get latest source
```bash
$ git clone https://github.com/Calipsoplus/calipso-docker-demo.git
```

## Folders organization
* tree

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
```
* Now you can build with: docker-compose build
* And then run with docker-compose up

# Proposals/Sessions
* To add some proposals
```bash
$ cd scripts/manage
$ sh populate_calipso1.sh # insert experiments an sessions to user calipso1
```

# All done
Now can access to ```http://localhost``` to view the application
# Calipsoplus dockerized app

This is the main file which required for the ```CalipsoPlus``` portal.

**IMPORTANT:** This is only intended to be a demonstration system, not to be used for actual production.

## Prepare
Get latest source
```bash
$ git clone https://github.com/Calipsoplus/calipso-docker-demo.git
```

## Folders organization
* tree

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
```
* Now you can build with: docker-compose build
* And then run with docker-compose up

# Proposals/Sessions
* To add some proposals
```bash
$ cd scripts/manage
$ sh populate_calipso1.sh # insert experiments an sessions to user calipso1
```

# All done
Now can access to ```http://localhost``` to view the application

