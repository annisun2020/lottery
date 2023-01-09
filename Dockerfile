FROM node:16.14.0-alpine3.15
MAINTAINER YIN
RUN npm install -g cnpm
RUN cnpm i express opn body-parser path chokidar node-xlsx fs
ADD lottery.tar.gz  /
RUN chown -R root /lottery
RUN ls /lottery
RUN cd /lottery/server && npm install
RUN cd /lottery/product && npm install
RUN cd /lottery/product && npm run build
EXPOSE 8888
WORKDIR /lottery/product
CMD ["npm", "run", "serve"]
