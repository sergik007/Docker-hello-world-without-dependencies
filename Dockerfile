FROM maven

COPY target/dependency-jars /run/dependency-jars
ADD target/application.jar /run/application.jar
ENTRYPOINT java -jar run/application.jar -D exec.mainClass="com.test.Main"