FROM nginx:alpine

RUN apk add --update \
    python \
    shadow \
    python-dev \
    py-pip \
    build-base \ 
    --no-cache bash \
    && pip install virtualenv \
    && rm -rf /var/cache/apk/*

# Shadow adds the groupadd utility to alpine
# Need bash to run su
# Need python to get ansible working in the container