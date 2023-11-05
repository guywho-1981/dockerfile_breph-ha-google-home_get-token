FROM alpine:3.18

RUN apk add py3-pip
COPY ./get_tokens.py .
COPY ./requirements.txt .
RUN python3 -m pip install -r ./requirements.txt

CMD python3 get_tokens.py
