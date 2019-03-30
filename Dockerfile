FROM ruby:2.6-alpine

RUN apk update && apk add build-base

COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app
RUN bundle install

COPY . /usr/src/app/
