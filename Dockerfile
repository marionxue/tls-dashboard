FROM node:4
MAINTAINER xuelong@xingshulin.com
WORKDIR /root
COPY . /root/
RUN cat /root/sources.list > /etc/apt/sources.list \
   && apt-get update -y \
   && sudo mkdir /pod-data
STOPSIGNAL SIGTERM
CMD ["bash","run.sh"]
