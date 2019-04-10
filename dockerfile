FROM ruby:2.6.2
 
ENV LANG C.UTF-8
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
 
RUN mkdir /blog_app_sample
WORKDIR /blog_app_sample
ADD Gemfile /blog_app_sample/Gemfile
ADD Gemfile.lock /blog_app_sample/Gemfile.lock
RUN bundle install
COPY . /blog_app_sample