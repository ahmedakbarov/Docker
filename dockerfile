FROM python:3


COPY ./requirements.txt /app/requirements.txt

WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
RUN pip install --upgrade pip

EXPOSE 8000
ENTRYPOINT [ "python" ]

CMD [ "app.py" ]