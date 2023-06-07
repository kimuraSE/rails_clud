#!/bin/bash
set -e

bundle install

if [ ! -e "/backend/config/routes.rb" ]; then

  rails new . --force --api --database=postgresql --skip-git --skip-bundle
  bundle install
fi

rm -f /backend/tmp/pids/server.pid

exec "$@"
