#!/bin/bash

echo "Testing..."


echo "Running Cinemo Public App"
docker run --name cinemapp -p 8181:80 -d cinemapp 

echo "Executing GET request" 
value1=$( wget --spider -S "http://localhost:8181/api/health" 2>&1 | grep "HTTP/" | awk '{print $2}' )
value2=$( wget --spider -S "http://localhost:8181/api/customers/5e5303b245d0b8f27acd05dd" 2>&1 | grep "HTTP/" | awk '{print $2}' )

if [ $value1 -eq "200" ]
then
	echo "Test-1 = = GET request sucessfull!"
	
	if [ $value2 -eq "200" ]
	then
		echo "Test-2 = = GET request sucessfull!"
	else
		echo "Test-2 = = GET request FAILED !!!"
		docker stop cinemapp
	        docker rm cinemapp
		exit -1
	fi

	echo "Testing Done... performing cleanup..."
	docker stop cinemapp
	docker rm cinemapp
	exit 0
else
	echo "GET request FAILED !!!"
	echo "Testing Done... perform cleanup..."
	docker stop cinemapp
	docker rm cinemapp
	exit -1
fi

