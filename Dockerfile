FROM portenez/docker-builder:xenial-node8-nightwatch
MAINTAINER Victor Garcia <info@vgarcia.me>
# RUN apk add --update ca-certificates openssl && update-ca-certificates
WORKDIR /opt/plantuml

RUN wget https://downloads.sourceforge.net/project/plantuml/plantuml.jar
COPY entryPoint.sh entryPoint.sh

ENTRYPOINT ["./entryPoint.sh"]
CMD ["/bin/bash"]
