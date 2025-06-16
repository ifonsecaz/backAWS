#!/bin/bash
echo "Installing application..."

SERVICE_NAME=gatewayservice
DEPLOY_DIR=/opt/$SERVICE_NAME

# Create deploy directory if not exists
mkdir -p $DEPLOY_DIR

# Clean up old JARs
rm -f $DEPLOY_DIR/*.jar

# Copy new JAR to deploy directory (CodeDeploy puts files in current dir)
cp *.jar $DEPLOY_DIR/

echo "Application installed"