ARG image_full_name

FROM ${image_full_name}

RUN pip install pipenv

RUN mkdir -p /app
WORKDIR /app

COPY Pipfile /app
#RUN mkdir -p /app/py
COPY apackage /app/apackage/
COPY main.py /app/main.py
RUN pipenv install


#EXPOSE 8000
ENTRYPOINT []
CMD [ "pipenv", "run", "python", "/app/main.py" ]
