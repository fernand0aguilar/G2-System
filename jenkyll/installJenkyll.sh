#!/usr/bin/env bash

gem install jekyll bundler

jekyll new my-awesome-site

cd my-awesome-site

bundle exec jekyll serve
