FROM ruby:2.6
LABEL maintainer=gbatterbee1@gmail.com

#RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends |apt-transport-https

### Install Yarn
# https://github.com/yarnpkg/yarn/issues/2888
#RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -

# https://classic.yarnpkg.com/en/docs/install/#debian-stable
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -yqq && apt-get install -yqq nodejs yarn

### Install Gems
COPY Gemfile* /usr/src/app/
WORKDIR ./usr/src/app
RUN bundle install

# Copy working files
COPY . /usr/src/app/

# Default command
# By default, rails listens to requests from 127.0.0.1
# Because of port mappings through to container, requests are translated to localhost
# 0.0.0.0 -> all IP4 addresses on this machine
CMD ["bin/rails","s","-b","0.0.0.0"]
