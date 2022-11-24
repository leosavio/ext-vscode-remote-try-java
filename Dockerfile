FROM eclipse-temurin:17-jdk

#USER root:root
 
WORKDIR /app

ENV JAVA_TOOL_OPTIONS -agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=*:5005
 
COPY ./target/java-app.jar /app/
 
ENTRYPOINT [ "java", "-jar", "java-app.jar" ]

EXPOSE 5005
EXPOSE 8080
                                                                       