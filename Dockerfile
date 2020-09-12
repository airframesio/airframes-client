FROM ubuntu:latest

ARG GITHUB_REPO="airframesio/airframes-client"
ARG GITHUB_BRANCH="master"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt clean
RUN apt update
RUN apt install -y curl systemd bash
RUN curl https://raw.githubusercontent.com/${GITHUB_REPO}/${GITHUB_BRANCH}/scripts/install_clients.sh \
    | sh
RUN systemctl enable adc

VOLUME [ "/sys/fs/cgroup" ]
ENTRYPOINT ["/usr/bin/systemd"]
