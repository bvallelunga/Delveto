FROM node
MAINTAINER Brian Vallelunga <vallelungabrian@gmail.com>

RUN npm install -g sails

RUN mkdir /server
WORKDIR /server
COPY . /server/
RUN npm install

EXPOSE 1337
CMD ["bash", "/server/app.js"]
