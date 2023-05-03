FROM tomcat:latest
COPY ./deploy/sample.war /usr/local/tomcat/webapps
EXPOSE 8080
