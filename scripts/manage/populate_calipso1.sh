echo "EXPERIMENTS FOR CALIPSO USER 1"
echo ""
echo "copying script into container"
docker cp add_experiments_calipso1.sh backend01:/src/
docker cp sessions_demo.csv backend01:/src/


echo "set chmod"
docker exec -it backend01 chmod +x /src/add_experiments_calipso1.sh
echo "executing the script..."
docker exec -ti --user root:root backend01 sh -c "/src/add_experiments_calipso1.sh"
echo "done."

