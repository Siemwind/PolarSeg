FROM python:3.5

WORKDIR /app

COPY requirements_simple.txt requirements_simple.txt
COPY test_run.py test_run.py

RUN pip3 install -r requirements_simple.txt

COPY . .

CMD ["python3", "test_run.py"]