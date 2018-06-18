FROM python:2.7-slim
COPY . /app
WORKDIR /app
ENV http_proxy http://www-proxy.us.oracle.com:80
ENV https_proxy https://www-proxy.us.oracle.com:80
RUN export http_proxy=http://www-proxy-hqdc.us.oracle.com:80 &&\ 
    export https_proxy=https://www-proxy-hqdc.us.oracle.com:80 &&\
    export HTTP_PROXY=http://www-proxy-hqdc.us.oracle.com:80 &&\ 
    export HTTP_PROXY=https://www-proxy-hqdc.us.oracle.com:80 &&\
    pip install -r requirements.txt
RUN python app_test.py
ENTRYPOINT ["python", "app.py"]
