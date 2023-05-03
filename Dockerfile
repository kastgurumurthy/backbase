FROM Tomcat:latest
COPY ./sample.war /usr/local/tomcat/webapps
EXPOSE 8080.
