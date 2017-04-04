# Use the barebones version of Ruby 2.3.0
FROM ruby:2.4.1
RUN gem install bundler

# Install dependencies:
# - build-essential: To ensure certain gems can be compiled
# - nodejs: Compile assets
# - bundler: ensure most recent version is installed
RUN apt-get update && apt-get install -qq -y build-essential nodejs --fix-missing --no-install-recommends
RUN gem install bundler

# Set an environment variable to store where the app is installed to inside
# of the Docker image.
ENV LANG C.UTF-8
ENV BUNDLE_PATH /bundle
ENV INSTALL_PATH /app
RUN mkdir -p $INSTALL_PATH

# This sets the context of where commands will be ran in and is documented
# on Docker's website extensively.
WORKDIR $INSTALL_PATH
ADD . $INSTALL_PATH
