FROM centos:centos7.8.2003

LABEL \
    org.label-schema.schema-version="1.0" \
    org.label-schema.name="SCHISM" \
    org.label-schema.vendor="Delta Modeling Section, Modeling Support Office, California Department of Water Resources" \
    org.label-schema.license="MIT" \
    org.label-schema.build-date="20200824" \
    org.opencontainers.image.title="SCHISM" \
    org.opencontainers.image.vendor="cadwrdms" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.created="2020-08-24 00:00:00-08:00"

RUN yum install -y git zlib

CMD ["/bin/bash"]
