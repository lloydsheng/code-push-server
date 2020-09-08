FROM node:8.11.4-alpine

RUN npm config set registry https://registry.npm.taobao.org/

RUN mkdir /app
COPY package.json /app/package.json
WORKDIR /app
RUN npm install

COPY . /app