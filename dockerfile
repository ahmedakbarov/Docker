FROM python:2.7
RUN python -V
RUN pip install FLask
COPY . /
ENV FLASK_APP=hello.py
CMD flask run --host 0.0.0.0
EXPOSE 5000
