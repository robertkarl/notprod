FROM ubuntu
ENV PYTHONUNBUFFERED 1
ENV BUILD_REFRESH_DATE 10.26.2020

RUN apt-get -yq update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get -yq install python3 python3-dev bash
RUN apt-get -yq install emacs nginx vim htop curl httpie python3-pip
RUN apt-get -yq install man-db
RUN yes | unminimize

RUN pip3 install uwsgi flask

ADD  root/ /root/

ADD infra/src /private/
ADD infra/check_compliance.pl /usr/local/bin
RUN chmod 0777 /root
ADD etc/nginx/sites-enabled/lvl2 /etc/nginx/sites-enabled/
ADD infra/entry2.sh /private/
RUN rm -rf /etc/nginx/sites-enabled/default

WORKDIR /root

ENTRYPOINT /private/entry2.sh

