FROM sonarqube:latest
MAINTAINER Alexander Berguer "aberguer@octobot.io"

EXPOSE 9000

ENV SERVICE_NAME="sonarqube"
ENV PLUGIN_FOLDER="/opt/sonarqube/extensions/plugins/"

# Add language plugins
COPY ./plugins/* $PLUGIN_FOLDER
