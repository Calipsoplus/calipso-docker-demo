	


if [ -d "backend/calipsoplus-backend" ] && [ -d "frontend/calipsoplus-frontend" ] && [ -d "mock-login/calipsoplus-local-login-mock" ]
then
	cd scripts/help
	python ./up.py
	echo "Now you can build with: docker-compose build"
	echo "And then run with docker-compose up"
	echo ""
else
	echo "You have to clone all he source code before run this setup."
fi

