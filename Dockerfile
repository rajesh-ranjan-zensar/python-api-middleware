FROM python:3.7-bullseye
USER root

WORKDIR /opt/app-root

COPY ./requirements.txt .
COPY ./main.py .

RUN chown -R $(id -u):$(id -g) /opt/app-root && \
    chmod -R a=rwx /opt/app-root

RUN pip install -r ./requirements.txt

CMD ["python", "./main.py"]