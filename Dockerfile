FROM ubuntu:14.04
MAINTAINER Francisco Marin <kiko@keekdageek.com>

RUN apt-get update

# Set the locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get install -y \
	software-properties-common \
	python-software-properties

RUN apt-add-repository ppa:brightbox/ruby-ng -y
RUN apt-get update

RUN apt-get install -y \
 ruby2.1 \
 ruby2.1-dev \
 build-essential \
 zlib1g-dev \
 libxslt-dev \
 libxml2-dev \
 npm \
 libfreetype6 \
 libfontconfig

RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN gem install bundler
RUN npm install -g phantomjs

COPY . /root/tests
WORKDIR /root/tests
RUN bundle

CMD ["bundle", "exec", "cucumber"]
