cd ../../


printf "\033[0;32mCalipsoPlus setup\033[0m\n"



ip=`grep -o 'REMOTE_MACHINE_IP = "[a-zA-Z0-9.]*"'  backend/calipsoplus-backend/calipsoplus/settings_docker.py.example|awk -F"\"" '{print $2}'`
if [ -z "$ip" ] ; then
   ip="tcp://192.168.33.13"
fi

printf "\033[1;32mEnter host/ip where docker daemon lives [\033[1;33m$ip\033[1;32m]\033[0m"
read -p " " response
 
if [ -z "$response" ] ; then
   response=$ip
fi

sed -i "s#REMOTE_MACHINE_IP = \"$ip\"#REMOTE_MACHINE_IP = \"$response\"#g"  backend/calipsoplus-backend/calipsoplus/settings_docker.py.example
sed -i "s#DOCKER_URL_DAEMON = \"tcp://[a-zA-Z0-9.]*:2357\"#DOCKER_URL_DAEMON = \"tcp://$response:2357\"#g"  backend/calipsoplus-backend/calipsoplus/settings_docker.py.example

sed -i 's/\"browserTarget\": \"calipsoplus-app:build:docker\"/\"disableHostCheck\": true,\"browserTarget\":\"calipsoplus-app:build:docker\"/g' frontend/calipsoplus-frontend/angular.json


logo=`grep -o "facilityLogo: '[.A-Za-z0-9:/-]*'" frontend/calipsoplus-frontend/src/environments/environment.docker.ts.example|awk -F"'" '{print $2}'`

if [ -z "$logo" ] ; then
   echo "logo:$logo"
   logo="assets/images/insert-logo-here.jpg"
fi

printf "\033[1;32mEnter url logo for facility [\033[1;33m$logo\033[1;32m]\033[0m"

read -p " " response

if [ -z "$response" ] ; then
   response=$logo
fi

sed -i "s#facilityLogo: '[.A-Za-z0-9:/-]*'#facilityLogo: '$response'#g"  frontend/calipsoplus-frontend/src/environments/environment.docker.ts.example


