FROM ubuntu
ENV PYTHONUNBUFFERED 1

RUN apt-get -yq update
RUN apt-get -yq install nginx uwsgi
RUN apt-get -yq install python3 python3-dev bash
RUN apt-get -yq install vim htop

WORKDIR /root

ADD src /root/
ADD etc/nginx/sites-enabled/lvl1 /etc/nginx/sites-enabled/



ENTRYPOINT ./entry.sh
