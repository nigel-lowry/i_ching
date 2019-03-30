FROM ruby:2.6

COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app
RUN bundle install

COPY . /usr/src/app/
