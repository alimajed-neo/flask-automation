FROM python:3.9-slim

# NOTE recommended for running python on docker
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# NOTE create a directory in our image to store our source code inside docker image
RUN mkdir /app
# NOTE make /app as default directory
WORKDIR /app
COPY ./app /app
