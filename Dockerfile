FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
ARG demo
COPY ${JAR_FILE} app.jar
RUN  echo ${demo}
RUN  echo ${JAR_FILE}
ENTRYPOINT ["java","-jar","/app.jar"]
