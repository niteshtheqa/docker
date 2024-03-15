# docker
docker tutorials artifacts


FROM baseImage

RUN To execute commands , it will create layer in Image
MAINTAINER ==> This is basic information about MAINTAINER
COPY source dest == Copy file from source to destination however can't download files

ADD source dest Similar to COPY but can download files from internet, also extract files at docker image side

EXPOSE port To expose ports such as 8080 for Apache Tomcat , port 80 for ngix

WORKDIR /the/workdir/path , To set the current working directory for Container

CMD [ "executable" ]  , Execute commands but during Container creation

ENTRYPOINT [ "executable" ] # Highest priorty than CMD

ENV key=value To setting the Environment variables

ARG