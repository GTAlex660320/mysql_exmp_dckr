FROM openjdk:8-jdk-slim
COPY "mysql_exmp-0.0.1.jar" "dockapp.jar"
EXPOSE 8080
ENTRYPOINT ["java","-jar","dockapp.jar"]