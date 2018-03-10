FROM ruby:2-slim

ENV RAILS_ENVIRONMENT=production

RUN echo "deb http://ftp.debian.org/debian jessie-backports main" > /etc/apt/sources.list.d/backports.list

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y gcc g++ imagemagick jhead libxslt-dev libyaml-dev git libssl-dev \
    libpq-dev libreadline-dev libmagic-dev \
    gnash-tools \
    postgresql-client \
    rsync \
    ffmpeg

COPY moebooru /moebooru
COPY database.yml /moebooru/config/database.yml
COPY local_config.rb /moebooru/config/local_config.rb

WORKDIR /moebooru

RUN bundle install && \
    bundle exec rake db:reset && \
    bundle exec rake db:migrate

ENTRYPOINT ["bundle", "exec", "unicorn"]