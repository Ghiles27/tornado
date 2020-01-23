FROM python:3.7-slim-buster
RUN apt update &&  apt install -y python3-pip
RUN pip3 install tornado

WORKDIR /app
COPY .
RUN ls
ENTRYPOINT ["LS", "."]

ENTRYPOINT  ["/usr/bin/python3", "app.py"]

