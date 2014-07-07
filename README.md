Forked from [torkale/docker-jenkins](https://github.com/torkale/docker-jenkins)

docker-jenkins
==============

Jenkins in a Docker container; based on Ubuntu 14.04.

Includes gradle builds.

It comes with the following plugins:

 * hipchat.hpi
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
 * bitbucket.hpi
 * gradle.hpi

Usage
-----

    docker run -d -t niaquinto/jenkins

Building
--------

Grab Dockerfile from this repository on Github

    docker build github.com/niaquinto/docker-jenkins

Get a Docker image from Docker index

    docker pull niaquinto/jenkins


