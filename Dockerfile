FROM python:3.8-slim
RUN apt-get update
RUN apt-get install -y --no-install-recommends
RUN apt-get install -y build-essential libpq-dev gcc
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY requirements.txt /
RUN pip install flask
COPY . .

EXPOSE 5000

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]