FROM ruby:3.1.3

RUN apt-get update -qq && apt-get install -y --no-install-recommends\
  postgresql-client ffmpeg libvips

WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install

CMD ["rails", "server", "-b", "0.0.0.0"]
