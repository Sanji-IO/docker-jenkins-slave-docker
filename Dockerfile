FROM sanji/jenkins-swarm-slave

MAINTAINER Zack YL Shih <zackyl.shih@moxa.com>

USER root

RUN apt-get update && \
    apt-get install -y sudo && \
    rm -rf /var/lib/apt/lists/* # 20150224

RUN groupadd docker -g 995 \
	&& adduser jenkins-slave docker \
	&& adduser jenkins-slave sudo

RUN echo "%sudo ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER jenkins-slave
