FROM maven

ADD target/application.jar /run/application.jar
ENTRYPOINT java -jar run/application.jar -D exec.mainClass="com.test.Main"