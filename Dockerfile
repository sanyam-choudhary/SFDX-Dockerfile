FROM node:latest
MAINTAINER Sanyam Choudhary
RUN apk add --update --no-cache git openssh ca-certificates openssl curl
RUN npm install sfdx-cli --global
RUN sfdx --version
USER node
