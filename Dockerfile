FROM openjdk:8

COPY files/dc-server /opt/dc-server

CMD ["java" , "-Xmx1024m", "-jar", "/opt/dc-server/datacrow-server.jar", "-ip:127.0.0.1", "-userdir:/opt/dc-user", "-port:9000", "-imageserverport:9001", "-webserverport:8080", "-credentials:SA"]

