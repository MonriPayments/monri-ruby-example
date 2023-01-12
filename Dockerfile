FROM ruby:2.7.3

# throw errors if Gemfile has been modified since Gemfile.lock
# RUN bundle config

WORKDIR /usr/src/app
RUN gem install bundler:1.17.2
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .
RUN chmod +x run.sh
CMD ["./run.sh"]
