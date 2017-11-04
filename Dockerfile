# Alpine + Angular
FROM node:6.11-alpine

MAINTAINER Jan Marsh <jan.marsh@coodoo.de>

ENV ANGULAR_CLI_VERSION 1.5.0

RUN apk update && \
    rm -rf /var/cache/apk/* ~/.npm && \
    npm cache clear

#Angular CLI
RUN npm install -g @angular/cli@$ANGULAR_CLI_VERSION

EXPOSE 4200

CMD ["sh", "-c", "ng -v"]