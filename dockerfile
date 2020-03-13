FROM python:3

WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt
RUN pip install --upgrade pip

EXPOSE 8000
ENTRYPOINT [ "python" ]

CMD ["env", " FLASK_APP=app.py", "flask run"]