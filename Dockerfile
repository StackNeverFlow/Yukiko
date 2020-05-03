FROM debian:latest
WORKDIR /usr/src/yukiko
COPY package.json ./
COPY botconfig.exemple.json ./botconfig.json
RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
RUN apt update
RUN apt-get install -y nodejs
RUN apt update \
    && apt install --no-cache --virtual git curl build-essential g++ gcc\
    && npm install \
    && npm i -g nodemon \
    && apk del .build
COPY . .
CMD npm run dev