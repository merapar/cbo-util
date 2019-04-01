#!/bin/bash
NODES=`redis-cli -h $1 cluster nodes | grep slave | cut -f2 -d' '`
for node in $NODES; do
    ITEMS=`redis-cli -c -h ${node%:*} keys $2`
    for item in $ITEMS; do
      eval "redis-cli -c -h ${node%:*} del $item"
    done
done
