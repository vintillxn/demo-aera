FROM python:3.9-slim

WORKDIR /app

COPY app/myapp.py .

RUN pip install flask

EXPOSE 80

CMD ["python", "myapp.py"]