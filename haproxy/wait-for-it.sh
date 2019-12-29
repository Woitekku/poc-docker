#!/bin/sh
# wait for spring boot apps to be up and accessible

set -e

cmd="$@"

while [[ "$(curl -s -o /dev/null -w ''%{http_code}'' http://web-static:8080/)" != "200"  && "$(curl -s -o /dev/null -w ''%{http_code}'' http://web-ui:8080/ui/)" != "200" ]]; do echo "Waiting for backend servers"; sleep 1; done
echo "Backend servers are UP ---> Executing haproxy"

exec $cmd
