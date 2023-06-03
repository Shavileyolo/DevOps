FROM ubuntu:18.04
RUN apt update
RUN apt install default-jdk -y
RUN apt install tomcat9 -y
RUN apt install maven -y
RUN apt install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
WORKDIR boxfuse-sample-java-war-hello
RUN mvn package
WORKDIR target
EXPOSE 80
ADD hello-1.0.war /var/lib/tomcat9/webapps