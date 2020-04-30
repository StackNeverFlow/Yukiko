FROM node:12
RUN mkdir -p /usr/src/yukiko
WORKDIR /usr/src/yukiko
COPY package.json /usr/src/yukiko
COPY botconfig.json /usr/src/yukiko
RUN npm install
RUN npm i -g nodemon
COPY . /usr/src/yukiko
CMD npm run dev
