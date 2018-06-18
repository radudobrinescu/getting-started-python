FROM python:2.7-slim
COPY . /app
WORKDIR /app
#ENV HTTPS_PROXY=https://www-proxy.us.oracle.com:80
RUN pip install -r requirements.txt
RUN python app_test.py
ENTRYPOINT ["python", "app.py"]
