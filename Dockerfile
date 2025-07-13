FROM python:3

WORKDIR /data
COPY . /data

RUN pip install --no-cache-dir Django==4.2 gunicorn

COPY . .

RUN python manage.py migrate

EXPOSE 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"]

