FROM nginx:alpine

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \ 
    && pip install virtualenv \
    && rm -rf /var/cache/apk/*
# This is a hack to add the groupadd utility to alpine
RUN apk add --update shadow
# Need bash to run su
RUN apk add --no-cache bash
