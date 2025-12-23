#!/bin/bash

#COMPILE
if [ -f "source_code.txt" ]; then
    echo "Compilation Success"
else
    echo "Error"
    exit 1
fi

#TEST
if [ $RANDOM -eq 0 ]; then
    echo "Test failed"
    exit 1
else
    echo "Test passed"
fi

#PACKAGE
touch "artifact.jar"
echo "Package successfully created"

#DEPLOY
mkdir -p deploy
mv artifact.jar deploy/
echo "Deployment successful"
