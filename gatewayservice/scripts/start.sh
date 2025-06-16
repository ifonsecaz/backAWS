#!/bin/bash
echo "Starting application..."

SERVICE_NAME=gatewayservice
JAR_NAME=$(ls /opt/$SERVICE_NAME/*.jar | head -n 1)

# Run in background using nohup
nohup java -jar "$JAR_NAME" > /opt/$SERVICE_NAME/application.log 2>&1 &

echo "Application started"