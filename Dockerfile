FROM node:19-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password 

WORKDIR /app

COPY . /app/

RUN npm install

CMD [ "node", "server.js" ]