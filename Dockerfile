FROM  ubuntu:12.04
MAINTAINER Anton Kiselev <anton.kisel@gmail.com>

RUN apt-get update
RUN apt-get install -y python-software-properties python && apt-get clean
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs && apt-get clean

WORKDIR /root

RUN npm install npm_lazy
RUN sed -i "s/externalUrl: '/externalUrl: process.env.URL || '/" node_modules/npm_lazy/config.js
ENTRYPOINT ["node", "node_modules/npm_lazy/server.js"]

