# pull official base image
FROM python:3.9.7-buster

# set work directory
WORKDIR /app



# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PYTHONPATH=/usr/lib/python3.8/site-packages
#RUN apk --no-cache upgrade musl

# copy requirements file
#RUN pip install --pre Werkzeug==2.0.0rc3
COPY requirements.txt /usr/app/requirements.txt

RUN pip install wheel
# install dependencies
RUN pip install  -r /usr/app/requirements.txt && rm -rf /root/.cache/pip
## copy pro

COPY . /app



