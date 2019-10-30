FROM rexandre07/centos7-java8:latest

# Install Maven
WORKDIR /opt
RUN wget https://www-eu.apache.org/dist/maven/maven-3/3.6.2/binaries/apache-maven-3.6.2-bin.tar.gz
RUN tar zxvf apache-maven-3.6.2-bin.tar.gz
RUN ln -s apache-maven-3.6.2 maven

# Setup ENV Variables
RUN echo "M2_HOME=/opt/maven" >> /etc/profile.d/maven.sh
RUN echo "PATH=${M2_HOME}/bin:${PATH}" >> /etc/profile.d/maven.sh
RUN source /etc/profile.d/maven.sh

# Check MVN Version
RUN mvn -version
RUN rm -f apache-maven-3.6.2-bin.tar.gz