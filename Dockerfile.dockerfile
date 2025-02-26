FROM python:3.10

WORKDIR /App

COPY . /App/

RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["python", "App.py"]