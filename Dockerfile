FROM eclipse-temurin:17-jdk AS build
WORKDIR /app
COPY src/main/java/Add.java .
RUN javac Add.java
FROM eclipse-temurin:17-jre
WORKDIR /app
COPY --from=build /app/Add.class .
CMD ["java", "Add"]
