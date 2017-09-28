export LOG_PATH=./log
export LOG_FILE_NAME=appserver.log
BINFILE=zgiot-app-server-1.0.jar

java -jar  lib/$BINFILE --spring.profiles.active=prod --spring.config.name=appserver  &> /dev/null &
tail -f $LOG_PATH/$LOG_FILE_NAME

