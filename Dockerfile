FROM openjdk

#maintainer
MAINTAINER pavantoteach@gmail.com

#expose port 8080
EXPOSE 8080

#default command
ADD /target/demo-0.1.0.jar demo.jar

#copy demo to docker image from builder image

ENTRYPOINT ["java","-jar","demo.jar"]