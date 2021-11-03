FROM openjdk:8-jdk-alpine
#ARG JAR_FILE=build/libs/demospringboot.jar
COPY ./build/libs/demospringboot-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
#
