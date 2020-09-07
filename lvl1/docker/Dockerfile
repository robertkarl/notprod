FROM ubuntu
ENV PYTHONUNBUFFERED 1

RUN apt-get -yq update
RUN apt-get -yq install nginx
RUN apt-get -yq install python3 python3-dev bash
RUN apt-get -yq install vim htop
RUN apt-get -yq install curl httpie
RUN apt-get -yq install python3-pip
RUN pip3 install uwsgi flask

WORKDIR /root

ADD src /root/
RUN chmod 0777 /root
ADD etc/nginx/sites-enabled/lvl1 /etc/nginx/sites-enabled/
RUN rm -rf /etc/nginx/sites-enabled/default


ENTRYPOINT ./entry.sh

