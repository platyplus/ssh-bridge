FROM sickp/alpine-sshd:7.5-r2
RUN sed -i s/#AllowTcpForwarding.*/AllowTcpForwarding\ yes/ /etc/ssh/sshd_config
RUN passwd -d root
COPY pilou.pub /root/.ssh/authorized_keys
