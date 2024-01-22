# Image to run into the container
FROM python:3.10.12-slim

# Folder root to project
WORKDIR /app

# Copy files and folder into the container
COPY . /app

# Install Dependencies
RUN apt-get update \
    && apt-get install -y libpq-dev build-essential \
    && pip install psycopg2-binary \
    && pip install --upgrade pip \
    && pip install psycopg2 \
    && pip install -r requirements.txt
