FROM ubuntu:20.04

WORKDIR /app

RUN apt-get update
RUN apt-get install -y xz-utils
ADD https://nodejs.org/dist/v12.16.1/node-v12.16.1-linux-x64.tar.xz .
RUN tar -xJvf node-v12.16.1-linux-x64.tar.xz
RUN mv node-v12.16.1-linux-x64/bin/node /usr/local/bin

COPY ./a.js .
COPY ./b.js .

ENTRYPOINT ["node", "b.js"]
