FROM jboss/base-jdk:8

COPY .*.war /usr/app/
WORKDIR /usr/app

ENTRYPOINT ["java", "-war", "*.war"]
