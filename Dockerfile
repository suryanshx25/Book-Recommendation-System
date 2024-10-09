FROM python:3.10-alpine

WORKDIR /app

COPY . /app/

COPY popular.pkl ./app/models/popular.pkl

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python","./app.py"]