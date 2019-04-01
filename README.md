# cbo-util
A docker image that provide various utility to troubleshoot the cbo project (AWS CLI, redis-tools, curl &amp; wget...)
Default launch command is a /bin/bash. This command can be overriden while launching with "docker run".

helper scripts:

cluster-delete.sh: deletes keys on all nodes based on pattern, e.g. ./cluster-delete.sh <url> Series:*
cluster-keys.sh: scans keys on all nodes based on pattern, e.g. ./cluster-keys.sh <url> Series:*
