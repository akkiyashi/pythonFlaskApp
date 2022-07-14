FROM python:3.8

COPY ./* ./app/
WORKDIR /app/

RUN pip install -U Flask

EXPOSE 8080
CMD ["python", "app.py"]
