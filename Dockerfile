FROM python:3.6

LABEL maintainer="dorahero2727@gmail.com"

COPY . /app

WORKDIR /app

RUN pip install --upgrade pip setuptools && \
    pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python"]

CMD ["server.py"]