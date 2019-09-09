FROM jenkins/jenkins:2.121.3

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

USER root

RUN apt-get update && apt-get install -y \
    ruby \
    make \
    openssh-server \
    sudo \
    maven \
    gradle \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Authorize SSH Host
RUN mkdir -p /root/.ssh && \
    chmod 0700 /root/.ssh

COPY security.groovy /usr/share/jenkins/ref/init.groovy.d/security.groovy

RUN service ssh start

RUN echo 'jenkins ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER jenkins

# installing specific list of plugins.
COPY plugins.txt /var/jenkins_home/plugins.txt
RUN /usr/local/bin/plugins.sh /var/jenkins_home/plugins.txt
