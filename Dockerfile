FROM ruby:2.5.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /login_crud
WORKDIR /login_crud
ADD Gemfile /login_crud/Gemfile
ADD Gemfile.lock /login_crud/Gemfile.lock
RUN bundle install
ADD . /login_crud