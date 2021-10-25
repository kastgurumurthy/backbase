FROM java:8
EXPOSE 8080
ADD /sample.war sample.war
ENTRYPOINT ["java", "-jar", "sample.war"]
