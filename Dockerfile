FROM nodesource/trusty
MAINTAINER Rafael Fonseca <rafael.magu@gmail.com>

RUN apt-get update \
 && apt-get upgrade -y --force-yes \
 && apt-get install -y ruby1.9.1 \
 && rm -rf /var/lib/apt/lists/*;

RUN gem install slim --no-rdoc --no-ri

RUN npm install -g npm@latest
