#! docker file reference >> https://docs.docker.com/reference/dockerfile/
FROM python:alpine3.17
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 80
CMD python ./bookstore-api.py
