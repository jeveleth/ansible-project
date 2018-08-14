FROM nginx:alpine

RUN apk add --update --no-cache \
    python \
    shadow \
    py-pip \
    bash \
    && pip install virtualenv

# Shadow adds the groupadd utility to alpine
# Need bash to run su
# Need python to get ansible working in the container
