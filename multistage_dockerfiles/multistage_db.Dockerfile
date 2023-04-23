FROM postgres

COPY words.sql /docker-entrypoint-initdb.d/words.sql

ENV POSTGRES_HOST_AUTH_METHOD=trust

EXPOSE 5432

USER postgres

CMD ["postgres"]