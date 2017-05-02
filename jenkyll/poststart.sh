#!/usr/bin/env bash

#sudo wget https://cache.ruby-lang.org/pub/ruby/2.4/ruby-2.4.1.tar.gz
cd /vagrant

tar -xvzf ruby-2.4.1.tar.gz && cd ruby-2.4.1

./configure && make && sudo make install

sudo gem install github-pages therubyracer --no-ri --no-rdoc
