sh wait-for-it.sh postgresql:5432
if [ ! -d /data/app ]; then
    echo "Cannot find server folder in /data. Initialize moebooru."
    mv /moebooru/* /data/
    mv /moebooru/.git /data
    bundle exec rake db:reset
    bundle exec rake db:migrate
fi
bundle exec unicorn