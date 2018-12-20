FROM ruby:2.5.1

ENV ROOT_PATH /ogp_parser
RUN mkdir $ROOT_PATH
WORKDIR $ROOT_PATH
ADD . $ROOT_PATH
RUN bundle install --path .bundle
