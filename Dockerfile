FROM debian:wheezy
# Forked from Nicholas Iaquinto <nickiaq@gmail.com>
MAINTAINER finalcut bill@rawlinson.us

RUN apt-get update
RUN apt-get -y install wget git curl git-core

RUN apt-get install -q -y openjdk-7-jre-headless

RUN wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
RUN echo "deb http://pkg.jenkins-ci.org/debian binary/" > /etc/apt/sources.list.d/jenkins.list
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y jenkins

RUN apt-get clean -y

VOLUME /var/lib/jenkins
ENV JENKINS_HOME /var/lib/jenkins

# Use bash, not dash
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN mkdir /var/run/sshd

EXPOSE 8080

ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

CMD ["/usr/local/bin/run"]

