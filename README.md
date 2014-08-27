Forked from [niaquinto/jenkins](https://github.com/niaquinto/docker-jenkins)

docker-jenkins
==============

Jenkins in a Docker container; based on Ubuntu 14.04.

It comes with the following jenkins plugins:

 * ant.hpi
 * greenballs.hpi
 * credentials.hpi
 * ssh-credentials.hpi
 * ssh-agent.hpi
 * git-client.hpi
 * git.hpi
 * github.hpi
 * github-api.hpi
 * ghprb.hpi
 * github-oauth.hpi
 * scm-api.hpi
 * postbuild-task.hpi

 Also comes with the following ant plugins
 * ant-contrib.jar
 * git-ant-task.jar
 * mail.jar
 * mxunit-ant.jar

Usage
-----

    docker run -d -t finalcut/jenkins

Building
--------

Grab Dockerfile from this repository on Github

    docker build github.com/finalcut/docker-jenkins

Get a Docker image from Docker index

    docker pull finalcut/jenkins


