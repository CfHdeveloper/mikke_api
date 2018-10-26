FROM ruby:2.5.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /mikke
WORKDIR /mikke
ADD Gemfile /mikke/Gemfile
ADD Gemfile.lock /mikke/Gemfile.lock
RUN bundle install
ADD . /mikke
