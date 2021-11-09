ARG RELEASE_VERSION

FROM nbraun/dask-sql:${RELEASE_VERSION:-0.4.0}

RUN mkdir -p /build

COPY requirements-app.txt /build
RUN cd /build && conda install --file requirements-app.txt

COPY requirements-dev.txt /build
RUN cd /build && conda install --file requirements-dev.txt

RUN conda list --export > /build/requirements.txt
