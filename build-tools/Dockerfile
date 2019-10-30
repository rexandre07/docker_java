FROM rexandre07/centos7-java8:latest

# Install Maven
WORKDIR /opt
RUN wget https://www-eu.apache.org/dist/maven/maven-3/3.6.2/binaries/apache-maven-3.6.2-bin.tar.gz
RUN tar zxvf apache-maven-3.6.2-bin.tar.gz

# Setup PATH
RUN ln -s /opt/apache-maven-3.6.2/bin/mvn /usr/bin/mvn

# Check MVN Version
RUN mvn -version
RUN rm -f apache-maven-3.6.2-bin.tar.gz

# Install Gradle
RUN wget https://services.gradle.org/distributions/gradle-5.6.3-bin.zip
RUN unzip -d /opt/gradle gradle-5.6.3-bin.zip && ls -lah /opt/gradle/gradle-5.6.3

# Setup PATH
RUN ln -s /opt/gradle/gradle-5.6.3/bin/gradle /usr/bin/gradle

# Check Gradle Version
RUN gradle -v
RUN rm -f *.zip