FROM flyio/postgres-flex:16.4

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        build-essential

RUN apt-get install -y --no-install-recommends postgresql-server-dev-16

WORKDIR /home

RUN git clone --branch v0.7.4 https://github.com/pgvector/pgvector.git
WORKDIR /home/pgvector
RUN make
RUN make install
