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

# Install dependencies
RUN yum install -y git zlib

# Install Intel Runtime
RUN rpm --import https://yum.repos.intel.com/2020/setup/RPM-GPG-KEY-intel-psxe-runtime-2020
RUN rpm -Uhv https://yum.repos.intel.com/2020/setup/intel-psxe-runtime-2020-reposetup-1-0.noarch.rpm
RUN yum install -y intel-ifort*-2020.2-14

# Grab SCHISM and untar
RUN curl -L https://github.com/CADWRDeltaModeling/schism-docker/releases/download/v0.1/schism_v5.8.tar.gz -o schism_v5.8.tar.gz
RUN tar -xf schism_v5.8.tar.gz
RUN rm schism_v5.8.tar.gz

CMD ["/bin/bash"]
