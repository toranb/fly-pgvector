FROM flyio/postgres-flex:15.2

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        build-essential

RUN apt-get install -y --no-install-recommends postgresql-server-dev-15

WORKDIR /home

RUN git clone --branch v0.5.0 https://github.com/pgvector/pgvector.git
WORKDIR /home/pgvector
RUN make
RUN make install
