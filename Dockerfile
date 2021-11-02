FROM flyway/flyway:8.0

USER root

# Add Redshift JDBC driver
ENV REDSHIFT_DRIVER=2.1.0.1
ADD https://s3.amazonaws.com/redshift-downloads/drivers/jdbc/${REDSHIFT_DRIVER}/redshift-jdbc42-${REDSHIFT_DRIVER}.jar /flyway/drivers

# Default location from flyway base image for migrations is
# /flyway/sql

# Default config is at /flyway/conf but you probably won't need to change that


CMD []
