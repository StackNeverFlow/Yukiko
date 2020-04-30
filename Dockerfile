FROM alpine:latest
WORKDIR /usr/src/yukiko
COPY package.json ./
COPY botconfig.exemple.json ./botconfig.json
RUN apk add --update \
    && apk add --no-cache nodejs-current nodejs-npm \
    && apk add --no-cache --virtual .build git curl build-base g++ \
    && npm install \
    && npm i -g nodemon \
    && apk del .build
COPY . .
CMD npm run dev