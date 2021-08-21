ARG image_full_name

FROM ${image_full_name}

RUN pip install poetry

RUN mkdir -p /app
WORKDIR /app

COPY pyproject.toml /app
#RUN mkdir -p /app/py
COPY apackage /app/apackage/
COPY main.py /app/main.py
RUN poetry install --no-dev


#EXPOSE 8000
ENTRYPOINT []
CMD [ "poetry", "run", "python", "/app/main.py" ]
