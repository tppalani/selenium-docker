FROM registry.access.redhat.com/ubi8/nginx-120:latest
USER root
RUN yum update -y
