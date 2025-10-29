FROM openjdk:17-jdk-slim
COPY . .
RUN ./mvnw clean package -DskipTests
CMD ["java", "-jar", "target/application-backend.jar"]
