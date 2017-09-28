export LOG_PATH=./log
export LOG_FILE_NAME=dataengine.log
BINFILE=zgiot-data-engine-1.0.jar

java -jar  lib/$BINFILE --spring.profiles.active=prod  --spring.config.name=dataengine &> /dev/null &
tail -f $LOG_PATH/$LOG_FILE_NAME
