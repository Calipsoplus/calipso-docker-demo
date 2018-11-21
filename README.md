# Calipsoplus dockerized app

This is the main file which required for the ```CalipsoPlus``` portal.

**IMPORTANT:** This is only intended to be a demonstration system, not to be used for actual production.

## Prepare
Get latest source
```bash
$ git clone https://github.com/Calipsoplus/calipso-docker-demo.git
```
Folders organization
```bash
C:.               
├───backend             <-- here you have to clone the backend project       
├───config        
│   ├───database        <-- mysql config
│   ├───logo            <-- define the image logo
│   └───nginx           <-- nginx proxy configuration
├───frontend            <-- here you have to clone the frontend project       
├───mock-login          <-- here you have to clone the mock-login service
└───scripts       
    ├───guacamole       <-- http file to access guacamole session
    ├───help            <-- shell scripts
    ├───manage          <-- to import external data
    └───mysql           <-- sql scripts
```
Now you have to clone all source
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
## Docker deployment
```bash
$ docker-compose up
```
This will take about 5 minutes

## Logo
To change default logo
```bash
$ cd /config/logo/
$ vim calipso-constants.ts # url of the logo
```

# Experiments/Sessions
To add some experiments 
```bash
$ cd scripts/manage
$ sh populate_calipso1.sh # insert experiments an sessions to user calipso1
```

# All done
Now can access to ```http://localhost``` to view the application


