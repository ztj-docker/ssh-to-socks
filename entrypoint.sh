#!/bin/sh

sshpass -p ${PASS} ssh -o StrictHostKeyChecking=no -N ${USER}@${HOST} -p ${PORT} -D 0.0.0.0:1080
echo "exit code: $?"
