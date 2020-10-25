FROM ubuntu
ENV PYTHONUNBUFFERED 1

RUN apt-get -yq update
RUN apt-get -yq install python3 python3-dev bash nginx
RUN apt-get -yq install vim htop curl httpie python3-pip

RUN pip3 install uwsgi flask

WORKDIR /root

ADD src /root/
ADD lvl1.ini /etc/
RUN chmod 0777 /root
ADD etc/nginx/sites-enabled/lvl1 /etc/nginx/sites-enabled/
RUN rm -rf /etc/nginx/sites-enabled/default


ENTRYPOINT /root/entry.sh

