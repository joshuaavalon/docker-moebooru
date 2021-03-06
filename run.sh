if [ ! -d /data/app ]; then
    echo "Cannot find server folder in /data. Initialize moebooru."
    bundle install
    mv /moebooru/* /data/
    mv /moebooru/.git /data
    cd /data
    bundle exec rake db:reset
    bundle exec rake db:migrate
fi

cd /data
bundle exec unicorn