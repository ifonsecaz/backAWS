#!/bin/bash
echo "Stopping application..."

# Find the PID of the running Spring Boot app and kill it
PID=$(pgrep -f 'java.*userservice')

if [ -z "$PID" ]; then
  echo "Application is not running"
else
  kill -9 $PID
  echo "Application stopped"
fi