FROM python:3.15
ENV MISSATGE=Vanessa
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
WORKDIR /app
COPY app.py .
EXPOSE 5000
CMD ["python3", "app.py"]
