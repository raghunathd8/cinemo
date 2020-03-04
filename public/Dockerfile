FROM node:latest

WORKDIR /usr/src/app

ENV http_proxy "http://10.10.0.10:3128"
ENV https_proxy "http://10.10.0.10:3128"
ENV HTTP_PROXY "http://10.10.0.10:3128"
ENV HTTPS_PROXY "http://10.10.0.10:3128"

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "node", "app.js" ]
