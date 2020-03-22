FROM ubuntu:20.04

RUN apt update
RUN apt install snap
RUN snap install node

WORKDIR /app
COPY ./a.js .
COPY ./b.js .

ENTRYPOINT ["node", "b.js"]
