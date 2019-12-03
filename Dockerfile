FROM yicho9412/ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive


RUN apt-get update -y
RUN apt-get install -y nginx 
RUN apt-get install -y certbot

