FROM jenkins

USER root
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
RUN \curl -sSL https://get.rvm.io | bash -s stable
RUN /usr/local/rvm/bin/rvm requirements

USER jenkins
WORKDIR  /var/jenkins_home

ENV HOME /var/jenkins_home
ENV rvm_bin_path /usr/local/rvm/bin
ENV rvm_path /usr/local/rvm
ENV rvm_prefix /usr/local
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/rvm/bin
