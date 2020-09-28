# the image location
# https://hub.docker.com/repository/docker/skalashynski/github_simple_java_maven_shade_plugin
FROM maven:3.6.3-jdk-8

RUN apt-get update -y
RUN apt-get install git -y
RUN git clone https://github.com/sergik007/Docker-hello-world-without-dependencies.git
WORKDIR /Docker-hello-world-without-dependencies
RUN mvn clean package
ENTRYPOINT java -jar /Docker-hello-world-without-dependencies/target/application.jar -D exec.mainClass="com.test.Main"