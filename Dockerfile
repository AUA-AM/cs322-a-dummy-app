# STAGE 1 : Builder image
FROM gradle:7-jdk17 as builder

WORKDIR .

COPY . .

RUN ./gradlew bootJar

# STAGE 2: RUNNER IMAGE
FROM openjdk:17

COPY --from=builder /home/gradle/build/libs/cs322-0.0.1-SNAPSHOT.jar .

ENTRYPOINT ["java","-jar","-Dserver.port=${PORT}","cs322-0.0.1-SNAPSHOT.jar"]