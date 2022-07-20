FROM python:3.10

RUN mkdir -p /usr/src/pdf-service
WORKDIR /usr/src/pdf-service

COPY . /usr/src/pdf-service

RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y
RUN pip install -r requirements.txt

ENTRYPOINT ["python", "main/app.py"]