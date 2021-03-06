#!/bin/bash

echo "Testing..."


echo "Running Cinemo Internal App"
docker run --name cinemapp -p 8181:8080 -d cinemapp 

echo "Executing GET request" 
value=$( wget --spider -S "http://localhost:8181/api/health" 2>&1 | grep "HTTP/" | awk '{print $2}' )
if [ $value -eq "200" ]
then
	echo "GET request sucessfull!"
	echo "Testing Done... performing cleanup..."
	docker stop cinemapp
	docker rm cinemapp
	docker rmi cinemapp
	exit 0
else
	echo "GET request FAILED !!!"
	echo "Testing Done... perform cleanup..."
	docker stop cinemapp
	docker rm cinemapp
	docker rmi cinemapp
	exit -1
fi

