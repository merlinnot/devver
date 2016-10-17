# Use phusion/baseimage as base image. To make your builds reproducible, make
# sure you lock down to a specific version, not to `latest`!
# See https://github.com/phusion/baseimage-docker/blob/master/Changelog.md for
# a list of version numbers. This is development package and it is meant to
# be latest and greatest.
FROM phusion/baseimage:latest

MAINTAINER Natan Sągol <m@merlinnot.com>

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# Update image
RUN apt-get -qq update && apt-get -qq upgrade -y -o \
      Dpkg::Options::="--force-confold"

# Install essential tools
RUN apt-get install -y --no-install-recommends vim nano git wget curl

# Add insecure Vagrant key
RUN rm -f /etc/service/sshd/down && /usr/sbin/enable_insecure_key
RUN /etc/my_init.d/00_regen_ssh_host_keys.sh
RUN mkdir -p /root/.ssh && curl -sL \
      https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub \
      > /root/.ssh/authorized_keys

# Installing Python
RUN apt-get install -y --no-install-recommends python python3 python-dev python3-dev

# Install basic C/C++ stack
RUN apt-get install -y --no-install-recommends build-essential clang libpython-all-dev libpython3-all-dev
ENV BOOST_MINOR=62
RUN wget -c \
      "http://sourceforge.net/projects/boost/files/boost/1.${BOOST_MINOR}.0/boost_1_${BOOST_MINOR}_0.tar.bz2/download" \
      --directory-prefix=/tmp/boost/ && \
    mkdir /tmp/boost/extracted && \
    tar -xf /tmp/boost/download -C /tmp/boost/extracted/ && \
    cd /tmp/boost/extracted/boost_1_${BOOST_MINOR}_0 && \
    ./bootstrap.sh --prefix=/usr/local/ && \
    ./b2 -d0 install && \
    rm -r /tmp/boost

# Install basic Haskell stack
RUN apt-get install -y --no-install-recommends libtinfo-dev
ENV PATH="${HOME}/.local/bin:${PATH}"
RUN curl -sSLq https://get.haskellstack.org/ | sh
RUN stack setup
RUN stack install apply-refact hlint stylish-haskell hasktags hoogle \
      intero hindent

# Install basic Go stack
RUN wget -q https://storage.googleapis.com/golang/go1.7.1.linux-amd64.tar.gz && \
    tar -xf go1.7.1.linux-amd64.tar.gz && \
    mv go /usr/local && \
    rm go1.7.1.linux-amd64.tar.gz
RUN mkdir ${HOME}/.go
ENV GOROOT=/usr/local/go
ENV GOPATH=${HOME}/.go
ENV PATH="${GOPATH}/bin:${GOROOT}/bin:${PATH}"

RUN go get -u github.com/nsf/gocode \
      github.com/rogpeppe/godef \
      golang.org/x/tools/cmd/oracle \
      golang.org/x/tools/cmd/gorename \
      golang.org/x/tools/cmd/goimports \
      github.com/alecthomas/gometalinter && \
    gometalinter --install

RUN mkdir -p ${GOPATH}/bin && curl https://glide.sh/get | sh

# Install Node
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash && \
    apt-get install -y --no-install-recommends nodejs
RUN npm install -g tern js-beautify eslint

# Install spacemacs
RUN apt-get install -y --no-install-recommends emacs
RUN git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
COPY .spacemacs /root/.spacemacs
RUN emacs -nw -batch -u "${UNAME}" -q -kill

# Install gcloud toolkit
RUN apt-get install -y --no-install-recommends unzip && \
    wget -q https://dl.google.com/dl/cloudsdk/channels/rapid/google-cloud-sdk.zip && \
    unzip -q google-cloud-sdk.zip && \
    mv ./google-cloud-sdk ${HOME}/.google-cloud-sdk && \
    rm -r google-cloud-sdk* && \
    ${HOME}/.google-cloud-sdk/install.sh \
      --usage-reporting=true \
      --path-update=true \
      --bash-completion=true \
      --rc-path=${HOME}/.bashrc \
      --additional-components \
        app-engine-python \
        app \
        kubectl \
        alpha \
        beta \
        gcd-emulator \
        pubsub-emulator \
        cloud-datastore-emulator \
        app-engine-go \
        bigtable

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
