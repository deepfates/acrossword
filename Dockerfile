FROM python:3.9 as libbuilder
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["hypercorn", "src.acrossword.server:app", "--bind", "0.0.0.0:22647"]
