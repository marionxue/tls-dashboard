FROM node:4
MAINTAINER xuelong@xingshulin.com
WORKDIR /root
COPY . /root
RUN cat /root/sources.list > /etc/apt/sources.list \
   && apt-get update -y \
   && apt-get install cron sudo -y \
   && sudo mkdir /pod-data \
   && echo "*/5 * * * * /usr/local/bin/node /root/node_app/get_cert_info.js" > /var/spool/cron/crontabs/root \
   && echo "*/1 * * * * /bin/cp /root/node_app/index.html" >> /pod-data/
STOPSIGNAL SIGTERM
CMD ["node","/root/node_app/get_cert_info.js"]
