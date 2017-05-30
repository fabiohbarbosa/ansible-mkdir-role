FROM centos:6.8

RUN rpm -ivh http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN yum install ansible -y

RUN adduser sopm
RUN groupadd staff

RUN mkdir /ansible
WORKDIR /ansible

CMD ansible-playbook -i tests/inventory tests/test.yml