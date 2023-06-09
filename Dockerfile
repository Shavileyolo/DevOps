FROM ubuntu:18.04
RUN apt-get update && \
    apt-get install -y default-jdk tomcat9 maven git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello && \
    cd boxfuse-sample-java-war-hello && \
    mvn package && \
    cd target && \
    cp hello-1.0.war /var/lib/tomcat9/webapps/ \