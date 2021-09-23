#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "Передайте имя стека"
    exit 1
fi

STACK_NAME=$1
VOLUME_PATH=$(docker volume inspect --format='{{.Mountpoint}}' "${STACK_NAME}_nifi_lib")

if [ "$VOLUME_PATH" = "" ]; then
    echo "Путь к тому не найден"
    exit 1
else
    echo "Путь к тому: $VOLUME_PATH"
fi

cp -v nifi-MonitorActivity-nar/target/nifi-MonitorActivity-nar-*.nar $VOLUME_PATH

if [ $? -ne 0 ]; then
    echo "Ошибка при копировании"
    exit 1
fi

echo "Скопировано"