#! /bin/bash

./docker/wait-for-services.sh
./docker/prepare-db.sh

# bundle exec rails s