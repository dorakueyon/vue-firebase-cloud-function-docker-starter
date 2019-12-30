FROM node:12-alpine

ENV WORKDIR /work
WORKDIR $WORKDIR

COPY package.json $WORKDIR
RUN yarn

COPY tsconfig.json $WORKDIR
COPY *.config.js $WORKDIR/
COPY public $WORKDIR/
COPY src $WORKDIR/src

EXPOSE 8080
CMD yarn serve
