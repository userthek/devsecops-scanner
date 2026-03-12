FROM ubuntu:20.04

RUN apt-get update && apt-get install -y gcc

WORKDIR /app

COPY main.c .

RUN gcc -o app main.c

CMD ["./app"]