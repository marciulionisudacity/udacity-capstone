FROM python:3.7.3-stretch

WORKDIR /app

COPY . app.py /app/
COPY . requirements.txt /app/
COPY . /model_data/ /app/

# hadolint ignore=DL3013
RUN pip install --upgrade --no-cache-dir pip &&\
    pip install --trusted-host pypi.python.org  --no-cache-dir -r requirements.txt

EXPOSE 80

CMD [ "python", "app.py" ]

