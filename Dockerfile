FROM python:3.9-slim

WORKDIR /app

COPY . /app/

COPY popular.pkl ./app/models/popular.pkl

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python","./app.py"]