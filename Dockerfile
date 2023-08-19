FROM alpine:3.18.3

ADD https://www.modbusdriver.com/downloads/modpoll.tgz /

RUN tar xzf modpoll.tgz

RUN mv /modpoll/x86_64-linux-gnu/modpoll /usr/bin && rm -rf /modpoll

ENTRYPOINT ["tail", "-f", "/dev/null" ]
