FROM ubuntu
WORKDIR /tmp
RUN apt update -y && apt install default-jdk -y
COPY test.txt /tmp
ENTRYPOINT [ "java --version > /tmp/java_version.txt" ]

