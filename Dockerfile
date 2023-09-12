FROM python:3.11.2

WORKDIR /app

COPY . /app/

RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["uvicorn", "crm_backend:app", "--workers", "3", "--host", "0.0.0.0", "--port", "80"]

EXPOSE 80