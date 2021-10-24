FROM jboss/base-jdk:8

COPY ./Maven-Database/target/*.jar /usr/app/
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "*.jar"]
