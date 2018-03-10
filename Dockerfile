FROM ruby:2

ENV RAILS_ENVIRONMENT=production

RUN echo "deb http://ftp.debian.org/debian jessie-backports main" > /etc/apt/sources.list.d/backports.list

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y libpq-dev \
      libxml2-dev \
      libxslt-dev \
      mercurial \
      jhead \
      libgd2-noxpm-dev \
      libmagic-dev \
      imagemagick \
      # dependecy for coffee-rails
      nodejs \
      # ruby calls run_cmd on psql
      postgresql-client

COPY moebooru /moebooru
COPY database.yml /moebooru/config/database.yml
COPY local_config.rb /moebooru/config/local_config.rb
COPY run.sh /moebooru/run.sh
COPY wait-for-it/wait-for-it.sh /moebooru/wait-for-it.sh

WORKDIR /moebooru

RUN bundle install

ENTRYPOINT ["sh", "run.sh"]