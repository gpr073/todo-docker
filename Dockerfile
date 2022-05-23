FROM node:18-alpine3.14

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PASSWORD=password

RUN mkdir -p /home/app

COPY . /home/app

WORKDIR '/home/app'

EXPOSE 4000

CMD [ "node", "server.js" ]