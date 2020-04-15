FROM openshift/jenkins-slave-maven-centos7:v3.11

USER root

RUN yum groupinstall -y 'Development Tools' &&\
    yum install -y epel-release &&\
    yum install -y python3-devel python3-setuptools python3-pip && \
    python3 -m pip install --upgrade pip && \
    python3 -m pip install bzt virtualenv

USER 1001
