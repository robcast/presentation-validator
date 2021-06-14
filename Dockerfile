FROM python:3

COPY . /app
WORKDIR /app

RUN python ./setup.py install

EXPOSE 8080
ENTRYPOINT ["/usr/local/bin/python3", "/app/iiif-presentation-validator.py"]
CMD ["--hostname", "0.0.0.0"]
