FROM ubuntu:latest
ENV FLASK_APP=hello.py
ENV FLASK_RUN_HOST=0.0.0.0

RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install --break-system-packages -r requirements.txt
CMD ["flask", "run"]