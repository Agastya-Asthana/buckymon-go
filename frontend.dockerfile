FROM node:current-alpine
RUN apk update && apk upgrade
WORKDIR /app
COPY frontend_2/package*.json ./
RUN npm install
RUN npm i -g serve
COPY frontend_2 ./
EXPOSE 3000

