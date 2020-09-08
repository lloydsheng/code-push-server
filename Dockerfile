FROM node:8.11.4-alpine

RUN npm config set registry https://registry.npm.taobao.org/ \
&& npm i -g code-push-server@0.5.2 pm2@latest --no-optional

RUN mkdir /app
COPY package.json /app/package.json
WORKDIR /app
RUN npm install

COPY . /app