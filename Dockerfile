ARG image_full_name

FROM ${image_full_name}


RUN mkdir /output /code
COPY requiremenets.txt /code/

ARG cache_date
RUN echo ${cache_date}

RUN pip install -r /code/requiremenets.txt

RUN conda install dask-sql=0.3.6 -c conda-forge

# same as anaconda image
CMD [ "/bin/bash" ]