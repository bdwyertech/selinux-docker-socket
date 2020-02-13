FROM centos:7

COPY . .

RUN yum install -y policycoreutils-python \
	&& checkmodule -M -m docker-socket.te -o docker-socket.mod \
	&& semodule_package -m docker-socket.mod -o docker-socket.pp
