FROM python:3.10.8-alpine3.16

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py ./

CMD [ "python", "./app.py" ]

EXPOSE 80

