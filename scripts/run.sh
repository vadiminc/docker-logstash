#!/bin/bash

# Start Logstash
echo "Starting Logstash..."
#/logstash/bin/logstash agent -e 'input { http {} } output { stdout { codec => rubydebug } }'
/logstash/bin/logstash agent -e ''"$INPUT_CONFIG"' '"$OUTPUT_CONFIG"''

#/logstash/bin/logstash agent --config /scripts/logstash.conf -- web
