FROM python:3.9-slim-buster

RUN apt-get update
RUN apt-get -y install git

RUN pip install --upgrade "git+https://github.com/ibm/detect-secrets.git@master#egg=detect-secrets"

ENTRYPOINT [ "python", "main.py"]
