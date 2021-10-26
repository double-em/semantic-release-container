FROM node:lts-alpine3.14

RUN apk update && \
    apk upgrade && \
    apk add git && \
    apk add docker

RUN npm install --global \
    semantic-release \
    @semantic-release/git \
    @semantic-release/changelog \
    @semantic-release/exec \
    @semantic-release-plus/docker

RUN npm cache clean --force
