FROM flyway/flyway:6.4

USER root

# Add Redshift JDBC driver
ENV REDSHIFT_DRIVER=1.2.45.1069
ADD https://s3.amazonaws.com/redshift-downloads/drivers/jdbc/${REDSHIFT_DRIVER}/RedshiftJDBC42-no-awssdk-${REDSHIFT_DRIVER}.jar /flyway/drivers

# Default location from flyway base image for migrations is
# /flyway/sql

# Default config is at /flyway/conf but you probably won't need to change that


CMD []
