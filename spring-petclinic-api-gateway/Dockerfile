FROM eclipse-temurin:17
WORKDIR app
COPY target/*.jar app.jar
ENV SPRING_PROFILES_ACTIVE docker
CMD ["java", "-jar", "app.jar"]