FROM rexandre07/centos7-maven-gradle:latest

# Download and Extract Spring Boot CLI
RUN wget https://repo.spring.io/release/org/springframework/boot/spring-boot-cli/2.2.0.RELEASE/spring-boot-cli-2.2.0.RELEASE-bin.zip
RUN unzip -d /opt/sprint-boot-cli-2.2 spring-boot-cli-2.2.0.RELEASE-bin.zip
RUN ln -s /opt/sprint-boot-cli-2.2/spring-2.2.0.RELEASE/bin/spring /usr/bin/spring

# Shell Completion
RUN ln -s /opt/sprint-boot-cli-2.2/spring-2.2.0.RELEASE/shell-completion/bash/spring /etc/bash_completion.d/spring

# Check Version
RUN spring --version