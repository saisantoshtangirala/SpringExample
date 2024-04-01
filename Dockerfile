# Use the official OpenJDK image as a parent image
FROM amazoncorretto:17

# Set the working directory in the container
WORKDIR /app

# Copy the executable JAR file from the build environment into the container
COPY build/libs/*.jar app.jar

# Run the JAR file
CMD ["java", "-jar", "app.jar"]
