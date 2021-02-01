FROM java:8-alpine

ENV JAVA_OPTS ""

VOLUME /opt/app/logs

WORKDIR /opt/app

ADD app.jar .
ADD lib ./lib

CMD ["sh", "-c", "java -Dloader.path=lib/ -jar ${JAVA_OPTS} app.jar"]

EXPOSE 8080