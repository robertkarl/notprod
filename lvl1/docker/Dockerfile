FROM ubuntu
ENV PYTHONUNBUFFERED 1

RUN apt-get -yq update
RUN apt-get -yq install nginx uwsgi
RUN apt-get -yq install python3 python3-dev bash
RUN apt-get -yq install vim htop

WORKDIR /root

ADD src /root/



ENTRYPOINT bash
