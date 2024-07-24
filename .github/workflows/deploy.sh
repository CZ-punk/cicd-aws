#!/bin/bash

# Stop the existing Java process
pid=$(ps -ef | grep java | head -n 1 | awk '{print $2}')
if [ -n "$pid" ]; then
  kill -9 $pid
fi

# Start the new Java process
nohup java -jar *.jar 1> /dev/null 2>&1 &
