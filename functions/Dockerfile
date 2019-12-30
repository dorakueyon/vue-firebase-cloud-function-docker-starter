FROM node:8-alpine

ENV WORKDIR /work/functions
WORKDIR $WORKDIR

COPY ./functions/package.json $WORKDIR
RUN yarn
# firebase
RUN yarn global add firebase-tools

COPY ./functions/tsconfig.json $WORKDIR
COPY ./functions/src $WORKDIR/src
# for symbolic link (./functions/src/services/simplespi)
# COPY ./src/services/project-name /work/src/services/project-name

# firebase
COPY firebase.json /work
COPY .firebaserc /work
# COPY ./functions/.runtimeconfig.json $WORKDIR # if needed
# COPY ./functions/credentials $WORKDIR/credentials # if needed

# settings for runtime emulator
ENV HOST 0.0.0.0
EXPOSE 5000

EXPOSE 9005
