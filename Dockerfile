ARG image_full_name

FROM ${image_full_name}

RUN mkdir /output /code
RUN conda install dask-sql=0.3.6 -c conda-forge

EXPOSE 8000

ARG cache_date
RUN echo ${cache_date}
COPY requiremenets.txt /code/
RUN pip install -r /code/requiremenets.txt

# same as anaconda image
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
