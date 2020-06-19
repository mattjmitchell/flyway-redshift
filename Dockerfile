FROM flyway/flyway:6.4
USER root

RUN apt-get update \
    && apt-get install unzip \
    && cd /flyway/drivers \ 
    && curl -o driver.zip https://s3.amazonaws.com/redshift-downloads/drivers/jdbc/1.2.45.1069/RedshiftJDBC42-1.2.45.1069.zip \
    && unzip driver.zip \
    && rm driver.zip

CMD ["migrate"]
