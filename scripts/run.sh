#!/bin/bash

# Start Logstash
echo "Starting Logstash..."
/logstash/bin/logstash agent -e ''"$INPUT_CONFIG"' '"$OUTPUT_CONFIG"''
