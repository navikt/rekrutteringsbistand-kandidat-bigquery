FROM python:3.9-slim

RUN mkdir /app
WORKDIR /app

COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY secret_pusher.py .

CMD ["python3", "tabellreplisering.py"]