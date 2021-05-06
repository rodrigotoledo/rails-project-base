FROM ruby:2.7.2
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y build-essential nodejs libpq-dev postgresql-client yarn
RUN mkdir /usr/src/booking_me
WORKDIR /usr/src/booking_me
ADD . /usr/src/booking_me
RUN gem install bundler -v 2.0.1
RUN bundle install