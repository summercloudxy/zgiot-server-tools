FILE_NAME='zgiot-smartfactory_v1.0_BUILD-11.tar'
curl -u xg_jenkins:xg_jenkins123 -O  http://192.168.5.37:8080/job/xg_server2_all/ws/dist/$FILE_NAME

tar -xvf $FILE_NAME -C ../ 
