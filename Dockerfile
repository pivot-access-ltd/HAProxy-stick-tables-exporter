FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY HAProxy-stick-tables-exporter.py ./

CMD [ "python", "./HAProxy-stick-tables-exporter.py" ]
