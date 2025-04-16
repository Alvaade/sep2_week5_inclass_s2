FROM openjdk:17
COPY ./src /usr/src/myapp
WORKDIR /usr/src/myapp
RUN javac main/java/org/example/App.java
CMD ["java", "org.example.App"]
