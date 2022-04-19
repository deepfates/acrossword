FROM python:3.9 as libbuilder
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .
EXPOSE 22647
CMD ["hypercorn", "src.acrossword.server:app", "--bind", "[::]:22647"]
