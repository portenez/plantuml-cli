FROM portenez/docker-builder:xenial-node8-nightwatch

# RUN apk add --update ca-certificates openssl && update-ca-certificates
RUN wget https://downloads.sourceforge.net/project/plantuml/plantuml.jar
COPY entryPoint.sh entryPoint.sh

ENTRYPOINT ["./entryPoint.sh"]
