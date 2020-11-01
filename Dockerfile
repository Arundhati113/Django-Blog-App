FROM python:3
ENV PYTHONUNBUFFERED 1
WORKDIR /app
ADD . /app
COPY . /requirements.txt/app/requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . /app
CMD [ "python", "./Assignment1/manage.py", "runserver", "0.0.0.0:8000" ]
