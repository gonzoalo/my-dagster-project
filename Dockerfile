FROM python:3.10-slim-bullseye

USER root

# Install a full C toolchain and C build-time dependencies for
# everything we're going to need.
RUN \
 apt-get update -y \
 && DEBIAN_FRONTEND=noninteractive \
    apt-get install -qy --no-install-recommends \
      python-is-python3 python3-dev gcc libpq-dev

COPY requirements.txt /requirements.txt

RUN apt-get install -y gnupg
RUN pip install -r /requirements.txt

WORKDIR /opt/dagster/app

COPY . /opt/dagster/app