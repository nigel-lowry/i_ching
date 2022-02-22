FROM ruby:3.1.1-alpine

RUN apk add --update --no-cache \
  build-base

COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app
RUN bundle install

COPY . /usr/src/app/
