FROM openjdk:17-jdk-slim
COPY . .
RUN ./mvnw clean package -DskipTests
CMD ["java", "-jar", "target/demo-0.0.1-SNAPSHOT.jar"]


#docker image push docker.io/rchapagain/imageName:tagName

#docker pull yourusername/my-app:latest