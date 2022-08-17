#Launch poc - after building the project
FROM node:16-alpine

LABEL maintainer="Baptiste Hubert <baptiste.hubert@inria.fr>"
LABEL org.opencontainers.description running simple-WebRTC-Chat app
LABEL org.opencontainers.authors https://github.com/coast-team/sigver/graphs/contributors
LABEL org.opencontainers.source https://github.com/coast-team/sigver
LABEL org.opencontainers.image.vendor COAST

WORKDIR /usr/app

RUN npm install -g angular-http-server

COPY build/ /usr/app/

EXPOSE 8021

CMD ["angular-http-server", "-p", "8021"]
