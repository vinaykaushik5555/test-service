# Use an official OpenJDK 17 Slim runtime as a parent image
FROM openjdk:17-jdk-slim

# Set metadata for the image (optional but recommended)
LABEL maintainer="Your Name <kumar.vinay64@gmail.com>"
LABEL description="Spring Boot Application having multiple deployment profiles and deployed on k8s"

# Set environment variables if needed
ENV APP_NAME=test-service
ENV APP_PORT=8080

# Create a directory for your application
RUN mkdir /app

# Set the working directory to /app
WORKDIR /app

# Copy the packaged JAR file into the container at /app
COPY target/test-service.jar /app

# Expose the application port (optional, for documentation purposes)
EXPOSE 8080

# Run the JAR file as the application
CMD ["java", "-jar", "/app/test-service.jar"]
