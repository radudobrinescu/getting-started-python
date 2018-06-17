FROM python:2.7-slim

# Install app dependencies
#RUN apt-get update -y
#RUN apt-get install -y python-pip python-dev flask 

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["app.py"]
