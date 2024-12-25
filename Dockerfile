# Pull base image
FROM python:3.12.0-slim-bullseye

# Set envirioment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONNUNBUFFERED 1

# Set work directory
WORKDIR /code

# Install dependencies
COPY ./requirements.txt .
RUN pip install -r requirements.txt

RUN mkdir -p /code/static_root
# copy project
COPY . .
