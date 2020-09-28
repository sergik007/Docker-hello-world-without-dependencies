FROM maven:3.6.3-jdk-8

RUN apt-get update -y
RUN apt-get install wget -y
RUN wget https://github.com/sergik007/Docker-hello-world-without-dependencies.git
RUN mvn claen package
ENTRYPOINT java -jar application.jar -D exec.mainClass="com.test.Main"