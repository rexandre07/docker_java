FROM rexandre07/centos7-java8:latest

# Install Maven
WORKDIR /opt
RUN wget https://www-eu.apache.org/dist/maven/maven-3/3.6.2/binaries/apache-maven-3.6.2-bin.tar.gz
RUN tar zxvf apache-maven-3.6.2-bin.tar.gz

# Setup PATH
RUN export M2_HOME=/opt/apache-maven-3.6.2
RUN 'export PATH=$PATH:$M2_HOME/bin'

# Check MVN Version
RUN mvn -version
RUN rm -f apache-maven-3.6.2-bin.tar.gz

# Install Gradle
RUN wget https://services.gradle.org/distributions/gradle-5.6.3-bin.zip
RUN unzip -d /opt/gradle gradle-5.6.3-bin.zip && ls -lah /opt/gradle/gradle-5.6.3

# Setup PATH
RUN export GRADLE_HOME=/opt/gradle/gradle-5.6.3
RUN 'export PATH=$PATH:$GRADLE_HOME/bin'

# Check Gradle Version
RUN gradle -v
RUN rm -f *.zip