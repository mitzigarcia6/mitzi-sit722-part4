FROM --platform=linux/amd64 python:3.11-slim

WORKDIR /app/
 
COPY app /app/app
 
COPY requirements.txt /app/
 
RUN pip install --no-cache-dir -r /app/requirements.txt
 
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
