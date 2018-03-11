# config valid for current version and patch releases of Capistrano
lock "~> 3.10.1"

set :application, "woodscout"
set :repo_url, "git@github.com:GDegrove/woodscout-ruby-backend.git"

set :deploy_to, "/var/www/woodscout"

append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"
