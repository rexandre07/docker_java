FROM centos:7

# Install Dependencies
RUN yum update -y && yum upgrade -y
RUN yum install vim tree wget zip unzip -y

# Install JDK 8
WORKDIR /tmp
RUN wget -O jdk-8u131-linux.rpm -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm
RUN rpm -ivh jdk-8u131-linux.rpm
RUN rm -f jdk-8u131-linux.rpm

# Confirm JAVA Installation
RUN java -version
RUN which java
