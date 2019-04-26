cd ../../

echo "CalipsoPlus setup."
ip=`grep -o 'REMOTE_MACHINE_IP = "[a-zA-Z0-9.]*"'  backend/calipsoplus-backend/calipsoplus/settings_docker.py.example|awk -F"\"" '{print $2}'`
echo $ip
if [ -z "$ip" ] ; then
   ip="tcp://192.168.33.13"
fi


read -p "Enter host/ip where docker daemon lives [$ip] " response
 
if [ -z "$response" ] ; then
   response=$ip
fi
echo $response

sed -i "s#REMOTE_MACHINE_IP = \"$ip\"#REMOTE_MACHINE_IP = \"$response\"#g"  backend/calipsoplus-backend/calipsoplus/settings_docker.py.example
sed -i "s#DOCKER_URL_DAEMON = \"tcp://[a-zA-Z0-9.]*:2357\"#DOCKER_URL_DAEMON = \"tcp://$response:2357\"#g"  backend/calipsoplus-backend/calipsoplus/settings_docker.py.example

sed -i 's/\"browserTarget\": \"calipsoplus-app:build:docker\"/\"disableHostCheck\": true,\"browserTarget\":\"calipsoplus-app:build:docker\"/g' frontend/calipsoplus-frontend/angular.json


