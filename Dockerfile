ARG MINIFORGE_VERSION=26.1.1-2
ARG UBUNTU_VERSION=24.04
ARG CONDA_ENV_PATH=/opt/conda/envs/sigprofilerextractor

FROM condaforge/miniforge3:${MINIFORGE_VERSION} AS builder

ARG CONDA_ENV_PATH

# Install SigProfilerExtractor directly from Bioconda into the configured environment path.
ARG SIGPROFILEREXTRACTOR_VERSION=1.2.1
ARG PYTHON_VERSION=3.13

RUN mamba create -qy -p ${CONDA_ENV_PATH} \
    -c bioconda \
    -c conda-forge \
    python=${PYTHON_VERSION} \
    sigprofilerextractor=${SIGPROFILEREXTRACTOR_VERSION} && \
    mamba clean -afy

# Deploy the target tools into a base image
FROM ubuntu:${UBUNTU_VERSION} AS final

ARG CONDA_ENV_PATH

COPY --from=builder ${CONDA_ENV_PATH} ${CONDA_ENV_PATH}

ENV CONDA_ENV_PATH="${CONDA_ENV_PATH}" \
    PATH="${CONDA_ENV_PATH}/bin:${PATH}"

# Add a new user/group called bldocker
RUN groupadd -g 500001 bldocker && \
    useradd -m -r -u 500001 -g bldocker bldocker

# Change the default user to bldocker from root
USER bldocker

LABEL maintainer="Yash Patel <ypatel@sbpdiscovery.org>" \
      org.opencontainers.image.source=https://github.com/TheBoutrosLab/docker-SigProfilerExtractor \
      org.opencontainers.image.description="Dockerfile for SigProfilerExtractor"

CMD ["/bin/bash"]
