# Using an OpenJDK base image with development tools
FROM openjdk:11-jdk-slim

# Setting the working directory
WORKDIR /app

# Copying the HelloWorld.java file to the container
COPY HelloWorld.java /app/

# Compiling the Java file
RUN javac HelloWorld.java

# Exposing the port the server will listen on (8080)
EXPOSE 8080

# Command to run the Java program
CMD ["java", "HelloWorld"]