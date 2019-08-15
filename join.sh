#!/bin/sh
ProjectName=a3500

sudo docker ps -a | grep ${ProjectName}_$(id -nu)>/dev/null;
if [ $? -ne 0 ]
then
	echo "Container ${ProjectName}_$(id -nu) isnot existed!!!"
else
	sudo docker start ${ProjectName}_$(id -nu)
	sudo docker exec -u $(id -nu) -it a3500_$(id -nu) bash
fi
