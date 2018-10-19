echo "copying script into container"
docker cp default_facilities.json django01:/src/apprest/fixtures/default_facilities.json
docker cp add_facilities.sh django01:/src/
echo "set chmod"
docker exec -it django01 chmod +x /src/add_facilities.sh
echo "executing the script..."
docker exec -ti --user root:root django01 sh -c "/src/add_facilities.sh"
echo "done."
