FROM debian:bullseye

RUN set -ex     \
    && sed -i -- 's/# deb-src/deb-src/g' /etc/apt/sources.list \
    && apt-get update 
RUN apt install -y python3 python3-pip
COPY ./get_tokens.py .
COPY ./requirements.txt .
RUN python3 -m pip install -r ./requirements.txt

CMD bash
