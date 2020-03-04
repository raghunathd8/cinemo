FROM node:10

WORKDIR /usr/src/app

ENV HTTP_PROXY "http://10.10.0.10:3128"
ENV HTTPS_PROXY "http://10.10.0.10:3128"

COPY package*.json ./

RUN npm install --verbose

COPY . .

EXPOSE 8080
CMD [ "node", "app.js" ]
