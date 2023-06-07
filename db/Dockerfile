FROM postgres:15.3-alpine

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=password
ENV POSTGRES_DB=rails_db

COPY ./init.sql /docker-entrypoint-initdb.d/
