# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
MAINTAINER KT <ktchowdary4@gmail.com>

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=target/easy-notes-1.0.0.jar

# Add the application's jar to the container
ADD ${JAR_FILE} easy-notes-1.0.0.jar

# Run the jar file 
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=container","/easy-notes-1.0.0.jar"]
