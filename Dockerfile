FROM node:8.11.4-alpine

RUN npm config set registry https://registry.npm.taobao.org/ \
&& npm i -g code-push-server@0.5.2 pm2@latest --no-optional