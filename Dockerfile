FROM python:3.10-slim

WORKDIR /app

COPY app .

COPY main.py .

COPY setup.txt .

RUN pip install --upgrade pip

RUN pip install --no-cache-dir -r setup.txt

EXPOSE 8000

CMD ["python","main.py"]