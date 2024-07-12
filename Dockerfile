# About APK: https://wiki.alpinelinux.org/wiki/Alpine_Package_Keeper
# Packages are here: https://pkgs.alpinelinux.org/packages

FROM alpine:3.20

# Install Ruby and necessary dependencies:
# irb wouldn't run because rdoc was missing

RUN apk add ruby=3.3.3-r0 && \
  gem install rdoc && \
  gem install bundler

WORKDIR /app

COPY Gemfile .

RUN bundle install

