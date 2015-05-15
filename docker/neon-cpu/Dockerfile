# build from ubuntu
FROM ubuntu:14.04

# configure headless install
ENV DEBIAN_FRONTEND noninteractive

# install base
RUN apt-get update && \
    apt-get install --assume-yes \
                          git \
                          cmake \
                          python-pip \
                          python-dev \
                          python-sphinx

# install sphinx for documentation
pip install sphinxcontrib-napoleon

# download/configure/install neon
RUN cd /opt/ && git clone https://github.com/NervanaSystems/neon.git
ENV NEON_CONFIG_CPU 1
ENV NEON_CONFIG_GPU 0
ENV NEON_CONFIG_MPI 0
ENV NEON_CONFIG_DEV 0
RUN cd /opt/neon && \
    sed -i "s/^CPU = .*/CPU = $NEON_CONFIG_CPU/g" setup.cfg && \
    sed -i "s/^GPU = .*/GPU = $NEON_CONFIG_GPU/g" setup.cfg && \
    sed -i "s/^DIST = .*/DIST = $NEON_CONFIG_MPI/g" setup.cfg && \
    sed -i "s/^DEV = .*/DEV = $NEON_CONFIG_DEV/g" setup.cfg && \
    make install

# default to shell in neon dir
WORKDIR /opt/neon
CMD ["/bin/bash"]
