FROM node:latest
RUN mkdir -p /usr/share/nginx/html/ && \
   git clone https://github.com/marionxue/tls-dashboard -O /usr/share/nginx/html/ && \
   cd /usr/share/nginx/html/ && \
   node /usr/share/nginx/html/node_app/get_cert_info.js && \
   ln -s /usr/share/nginx/html/web_service/index.html /usr/share/nginx/html/index.html && \
   exit 0
CMD ["bash","-c","while true;do node /usr/share/nginx/html/node_app/get_cert_info.js;done"]
