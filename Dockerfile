FROM openjdk:17-jdk-slim
COPY . .
RUN ./mvnw clean package -DskipTests
CMD ["java", "-jar", "target/demo-0.0.1-SNAPSHOT.jar"]
