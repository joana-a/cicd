FROM python:3.8-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r flask_app/requirements.txt

EXPOSE 5000

ENV FLASK_APP=flask_app/app.py

CMD ["gunicorn", "-b", "0.0.0.0:5000", "flask_app.app:app"]
