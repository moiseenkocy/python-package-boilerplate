FROM python:3.12-alpine

COPY . /opt/src
WORKDIR /opt/src

RUN apk add --no-cache --virtual .build-deps gcc libffi-dev musl-dev \
&& pip install --no-cache-dir --upgrade pip \
&& pip install --no-cache-dir poetry \
&& poetry install \
&& apk del .build-deps
