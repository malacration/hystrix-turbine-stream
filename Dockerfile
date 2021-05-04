FROM openjdk:11.0.11-jdk
VOLUME /tmp
RUN ls
COPY build/libs/*.jar app.jar
RUN ENTRYPOINT ["java","-jar","app.jar"]
