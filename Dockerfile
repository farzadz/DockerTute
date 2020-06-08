FROM ubuntu:latest

RUN apt-get update && apt-get -y install python3 python3-pip

WORKDIR /home/app

ADD . .

RUN pip3 install -r requirements.txt 

CMD ["python3", "app.py"]
