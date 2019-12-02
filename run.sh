#!/bin/bash

cd rucasrar
bundle install
bundle exec rake cequel:migrate
cd ..

cd dashboard
bundle install
cd ..

cd config
bundle install
bundle exec rake rabbitmq:setup
cd ..

which foreman > /dev/null 2>&1
gem install foreman
foreman start
