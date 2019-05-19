FROM ubuntu:latest

MAINTAINER <aeamins> <aeamins@gmail.com>

RUN apt-get update -y

RUN apt-get install -y python-pip python-dev build-essential

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

RUN app.py

ENTRYPOINT [“python”]

CMD ['python','app.py']

EXPOSE 5000