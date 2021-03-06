FROM maven:3.6.3-openjdk-11 AS maven_build

COPY pom.xml /tmp/

COPY src /tmp/src/

WORKDIR /tmp/

RUN mvn package

#pull base image

FROM openjdk

#maintainer
MAINTAINER pavantoteach@gmail.com

#expose port 8080
EXPOSE 8080

#default command
CMD java -jar /target/demo-0.1.0.jar

#copy demo to docker image from builder image

COPY --from=maven_build /tmp/target/demo-0.0.1.jar demo-0.0.1.jar