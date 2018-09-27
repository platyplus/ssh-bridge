FROM sickp/alpine-sshd:7.5-r2
RUN passwd -d root
COPY pilou.pub /root/.ssh/authorized_keys
