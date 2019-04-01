#!/bin/bash
NODES=`redis-cli -h $1 cluster nodes | grep slave | cut -f2 -d' '`
for node in $NODES; do
    eval "redis-cli -h ${node%:*} keys $2"
done
