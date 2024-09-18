FROM ubuntu:24.10

RUN apt-get update && apt-get install -y rsyslog iputils-ping netbase net-tools python3 openssh-server vim sudo curl python3-yaml python3-jinja2 python3-paramiko python3-dev
RUN ssh-keygen -N "" -t ed25519 -f ~/.ssh/id_ed25519

COPY tmp/id_ed25519.pub /root/.ssh/authorized_keys
COPY entrypoint.sh /root/entrypoint.sh

WORKDIR /root

ENTRYPOINT ["sh", "entrypoint.sh"]