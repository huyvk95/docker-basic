FROM ubuntu:16.04
LABEL author.name="huy" \
    author.email="huyvk95@gmail.com"

RUN apt-get update
RUN apt-get install -y nginx

WORKDIR /venv
COPY  start.sh /venv
RUN chmod a+x /venv/*
ENTRYPOINT [ "/venv/start.sh" ]
EXPOSE 80
