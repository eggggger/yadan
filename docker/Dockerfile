FROM centos:7
MAINTAINER "yadan" <eggggger@yahoo.com>

ENV container docker
ENV TERM screen-256color

RUN yum -y update && \
yum -y install vim tmux zsh git-all gcc sudo rubygems openssh-server passwd wget proctools vnstat ncdu lsof nginx htop ack psmisc && \
yum clean all

RUN gem install tmuxinator

RUN useradd -ms /bin/zsh -G wheel yadan
RUN echo -e "yadan\nyadan" | passwd yadan

RUN mkdir /var/run/sshd
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' &&\
    ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key -N '' &&\
    ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N ''

RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.0/dumb-init_1.2.0_amd64
RUN chmod 755 /usr/local/bin/dumb-init

USER yadan

ENV SHELL /bin/zsh
ENV EDITOR vim

RUN cd ~ && git clone https://github.com/eggggger/yadan.git .yadan-config && \
    cd .yadan-config && /bin/zsh ~/.yadan-config/install

RUN mkdir ~/Workspace

USER root

ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]
CMD ["/usr/sbin/sshd", "-D"]
