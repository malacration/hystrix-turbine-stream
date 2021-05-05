FROM openjdk:11.0.11-jdk
VOLUME /tmp
RUN addgroup --system --gid 1001 appuser
RUN adduser --system --uid  1001   --group appuser
RUN mkdir /logs && chown -R appuser:appuser /logs
USER appuser
COPY build/libs/*.jar app.jar
EXPOSE 8061/tcp
ENTRYPOINT ["java","-jar","app.jar"]
