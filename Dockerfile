FROM node:alpine
MAINTAINER Sanyam Choudhary
RUN apk add --update --no-cache git openssh ca-certificates openssl curl
RUN npm install sfdx-cli --global
RUN sfdx --version
USER node

#install docker 
#docker -v (to check docker version)

#To build image,attach tag to image and push to dockerhub
#docker build -t <name of image> .
#docker image tag sfdx-docker-image <dockerhubusername>/sfdx-docker-image:latest
#docker image push <dockerhubusername>/sfdx-docker-image:latest

#docker run -d <name of image> 
#docker run -it --entrypoint=/bin/bash <name of image>
#docker ps (To check container running) -a (to check the exit container as well)
#docker restart <name of container> (To restart Container)

#TO DELETE IMAGE,CONTAINER AND STOP CONTAINER
#docker rmi <image id>   (to delete docker images)
#docker rm <cotainer id> (to delete the cotainer but container should be in stop condition)
#docker stop <container id> (to stop the container)