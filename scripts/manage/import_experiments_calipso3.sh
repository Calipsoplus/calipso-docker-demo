echo "EXPERIMENTS FOR CALIPSO USER 3"
echo ""
echo "copying script into container"
docker cp add_experiments_calipso3.sh django01:/src/

echo "set chmod"
docker exec -it django01 chmod +x /src/add_experiments_calipso3.sh
echo "executing the script..."
docker exec -ti --user root:root django01 sh -c "/src/add_experiments_calipso3.sh"
echo "done."