FROM sonarqube:alpine
MAINTAINER Alexander Bergeu "aberguer@octobot.io"

EXPOSE 9000
RUN chgrp -R 0 /opt/sonarqube && \
    chmod -R g=u /opt/sonarqube

RUN chmod 777 /opt/sonarqube -R 

ENV SERVICE_NAME="sonarqube"
ENV PLUGIN_FOLDER="/opt/sonarqube/extensions/plugins/"

# Add language plugins
COPY ./plugins/* $PLUGIN_FOLDER
