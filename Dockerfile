FROM openjdk:8-jre-alpine
VOLUME /tmp
EXPOSE 8080
COPY target/spring-openshift-mysql-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]