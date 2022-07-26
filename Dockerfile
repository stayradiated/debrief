FROM node:16.16.0-alpine

RUN set -e \
; apk upgrade -U \
; apk add ca-certificates ffmpeg mediainfo \
; rm -rf /var/cache/*

RUN npm install --verbose --location=global @remix-run/serve@1.6.8

WORKDIR /app
COPY ./dist/ ./
COPY ./public/ ./public/

ENV NODE_ENV=production

CMD remix-serve index.js
