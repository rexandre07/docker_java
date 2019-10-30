FROM rexandre07/centos7-java8:latest

# Install Maven
WORKDIR /opt
RUN wget https://www-eu.apache.org/dist/maven/maven-3/3.6.2/binaries/apache-maven-3.6.2-bin.tar.gz
RUN tar zxvf apache-maven-3.6.2-bin.tar.gz
RUN ln -s apache-maven-3.6.2 maven

# Setup ENV Variables
RUN echo "export M2_HOME=/opt/maven" >> /etc/profile.d/maven.sh
RUN echo "export PATH=${M2_HOME}/bin:${PATH}" >> /etc/profile.d/maven.sh
RUN chmod a+x /etc/profile.d/maven.sh
RUN source /etc/profile.d/maven.sh

# Check MVN Version
RUN mvn -version
RUN rm -f apache-maven-3.6.2-bin.tar.gz

# Install Gradle
RUN wget https://services.gradle.org/distributions/gradle-5.6.3-bin.zip
RUN unzip -d /opt/gradle gradle-5.6.3-bin.zip && ls -lah /opt/gradle/gradle-5.6.3

# Setup ENV Variables
RUN echo "export GRADLE_HOME=/opt/gradle/gradle-5.6.3" >> /etc/profile.d/gradle.sh
RUN echo "export PATH=${GRADLE_HOME}/bin:${PATH}" >> /etc/profile.d/gradle.sh
RUN chmod a+x /etc/profile.d/gradle.sh
RUN source /etc/profile.d/gradle.sh

# Check Gradle Version
RUN gradle -v
RUN rm -f *.zip