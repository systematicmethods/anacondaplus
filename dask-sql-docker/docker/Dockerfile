ARG RELEASE_VERSION

FROM python:${RELEASE_VERSION:-3.10.0-bullseye}

RUN mkdir -p /build /opt/java &&\
    cd build &&\
    wget -O jdk-11.tgz  https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jdk_x64_linux_hotspot_11.0.13_8.tar.gz

RUN ls -l /build &&\
    tar -C /opt/java -zxf /build/jdk-11.tgz &&\
    rm /build/jdk-11.tgz

ENV JAVA_HOME=/opt/java/jdk-11.0.13+8
ENV PATH=${JAVA_HOME}/bin:${PATH}

ARG REBUILD_VER=unknown
RUN echo $REBUILD_VER && curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs  | bash -s -- -y


RUN echo 'source $HOME/.cargo/env' >> $HOME/.bashrc && . $HOME/.cargo/env

RUN apt-get update && apt-get install -y unixodbc unixodbc-dev

RUN pip install poetry

COPY pyproject.toml poetry.lock /build

RUN poetry config virtualenvs.create false &&\
    cd /build &&\
    . $HOME/.cargo/env &&\
    poetry install



