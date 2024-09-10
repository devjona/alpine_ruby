# About APK: https://wiki.alpinelinux.org/wiki/Alpine_Package_Keeper
# Packages are here: https://pkgs.alpinelinux.org/packages

FROM alpine:3.20

# Install Ruby and necessary dependencies:
# irb wouldn't run because rdoc was missing

RUN apk add --clean ruby=3.3.3-r0 \
  vim && \
  gem install rdoc && \
  gem install bundler

WORKDIR /app

# We might remove this if we're using this image with Rails projects mounted into it.
# COPY Gemfile .

# We could avoid this too, for the same reasons above. Each Ruby or Rails project would have its own Gemfile.
# RUN bundle install

# Then again, we probabl have no need to have our own "Alpine Linux Ruby" image if we can use an official one.

