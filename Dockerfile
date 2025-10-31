# Use Eclipse Temurin JDK 17 (with cgroup fixes)
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Build the jar without running tests
RUN ./mvnw clean package -DskipTests

# Expose the port your Spring Boot app runs on
EXPOSE 8085

# Disable system metrics to avoid processor/cgroup bug
ENV MANAGEMENT_METRICS_BINDERS_SYSTEM=false

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "target/demo-0.0.1-SNAPSHOT.jar"]



#docker image push docker.io/rchapagain/imageName:tagName

#docker pull yourusername/my-app:latest