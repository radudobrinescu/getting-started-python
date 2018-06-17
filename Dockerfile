FROM python:2.7-slim

# Install app dependencies
RUN pip install Flask

# Bundle app source
COPY app.py /src/app.py
COPY app_test.py /src/app_test.py

EXPOSE  5000
CMD ["python", "/src/app.py", "-p 5000"]
