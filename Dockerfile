FROM portenez/docker-builder:xenial-node8-nightwatch

MAINTAINER Victor Garcia <info@vgarcia.me>

WORKDIR /opt/plantuml

RUN apt-get update
RUN apt-get install -y graphviz
RUN wget https://downloads.sourceforge.net/project/plantuml/plantuml.jar
RUN npm install gitbook-cli -g && gitbook fetch latest


COPY entryPoint.sh entryPoint.sh
COPY plantuml plantuml

RUN update-alternatives --install /usr/bin/plantuml plantuml /opt/plantuml/plantuml 90
