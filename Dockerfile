FROM ubuntu

RUN apt-get update
RUN apt-get install python3 python3-pip -y
RUN mkdir /opt/app
COPY src/main.py /opt/app/
COPY requirements.txt /opt/app/
RUN pip3 install -r /opt/app/requirements.txt
COPY docker-entrypoint.sh /

ENTRYPOINT "/docker-entrypoint.sh"


