#!/bin/sh
set -e

# Render config file
cat filebeat.yml | sed "s/LOGSTASH_HOST/$LOGSTASH_HOST/" | sed "s/LOGSTASH_PORT/$LOGSTASH_PORT/" | sed "s/LOGSTASH_INDEX/$LOGSTASH_INDEX/"  | sed "s/LOGSTASH_PATH/$LOGSTASH_PATH/"> filebeat.yml.tmp
cat filebeat.yml.tmp > filebeat.yml
rm filebeat.yml.tmp

exec "$@"