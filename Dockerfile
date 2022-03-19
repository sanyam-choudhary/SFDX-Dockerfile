FROM node:alpine
MAINTAINER Sanyam Choudhary
RUN apk add --update --no-cache git openssh ca-certificates openssl curl
RUN npm install sfdx-cli --global
RUN sfdx --version
USER node

#docker build .
#docker run node
#docker run -it --entrypoint=/bin/bash node
#docker ps (To check container running)
#docker restart <name of container> (To restart Container)