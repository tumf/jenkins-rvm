FROM jenkins
MAINTAINER tumf "y.takahara@gmail.com"

USER root
RUN apt-get update && apt-get install -y curl git build-essential libmysqlclient-dev libxml2-dev sudo
RUN curl -sSL https://rvm.io/mpapis.asc | gpg --import -
RUN curl -sSL https://get.rvm.io | bash -s stable
RUN bash -l -c "rvm requirements"

# RUN apt-get update && apt-get install -y curl git build-essential libmysqlclient-dev libxml2-dev sudo

USER jenkins
#WORKDIR  /var/jenkins_home
#ENV HOME /var/jenkins_home
#RUN curl -sSL https://rvm.io/mpapis.asc | gpg --import -
# RUN gpg --homedir /var/jenkins_home/.gnupg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
#RUN \curl -sSL https://get.rvm.io | bash -s stable

#ENV rvm_bin_path /usr/local/rvm/bin
#ENV rvm_path /usr/local/rvm
#ENV rvm_prefix /usr/local
#ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/rvm/bin
