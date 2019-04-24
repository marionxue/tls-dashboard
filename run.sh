#git add . && git commit -a -m "update tls-dashboard" && git push origin master
docker build -t bluerdocker/tls-dashboard:v1 -f ./Dockerfile .