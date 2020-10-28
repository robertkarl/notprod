FROM ubuntu
ENV PYTHONUNBUFFERED 1
ENV BUILD_REFRESH_DATE 10.26.2020

RUN apt-get -yq update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get -yq install python3 python3-dev bash
RUN apt-get -yq install emacs nginx vim htop curl httpie python3-pip

RUN pip3 install uwsgi flask

RUN apt-get -yq install zsh
RUN curl -sSL https://get.docker.com/ | sh

ADD  root/ /root/

ADD infra/src /private/
RUN chmod 0777 /root
ADD infra/entry.sh /private/
RUN rm -rf /etc/nginx/sites-enabled/default

WORKDIR /root

ENTRYPOINT /private/entry.sh

