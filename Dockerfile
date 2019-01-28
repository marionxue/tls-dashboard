FROM docker.io/library/node:6-alpine
RUN mkdir -p /usr/share/nginx/html/
COPY . /usr/share/nginx/html/
RUN cd /usr/share/nginx/html/ && node /usr/share/nginx/html/node_app/get_cert_info.js && ln -s /usr/share/nginx/html/web_service/index.html /usr/share/nginx/html/index.html && exit 0
ENTRYPOINT ["while true; do node /usr/share/nginx/html/node_app/get_cert_info.js; done"]

