FROM node
MAINTAINER Brian Vallelunga <vallelungabrian@gmail.com>

RUN npm install -g sails

RUN mkdir /delveto
WORKDIR /delveto
COPY . /delveto/
RUN npm install

EXPOSE 1337
CMD ["bash", "/delveto/app.js"]
