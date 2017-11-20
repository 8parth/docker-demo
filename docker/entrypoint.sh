#!/bin/bash
set -e
if [[ -a /tmp/puma.pid ]]; then
  rm /tmp/puma.pid
fi
bundle exec rake db:create
bundle exec rake db:migrate
if [[ \$RAILS_ENV == "production" ]]; then
  rake assets:precompile
fi
rails server -b 0.0.0.0 -P /tmp/puma.pid
exec "\$@"
