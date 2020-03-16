FROM python:2.7

RUN pip install FLask
COPY . /
ENV FLASK_APP=hello.py
CMD flask run