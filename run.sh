#!/bin/bash

while true
do
    cat /pod-data/tls-dashboard/monitered_hosts.js > /root/node_app/get_cert_info.js
    /usr/local/bin/node /root/node_app/get_cert_info.js
    /bin/cp -R /root/web_service/* /pod-data/
    sleep 60
done
