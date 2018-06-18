FROM python:2.7-slim
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
RUN python app_test.py
ENTRYPOINT ["python", "app.py"]

