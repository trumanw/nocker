FROM python:2.7-slim
MAINTAINER Truman Woo <chunan.woo@gmail.com>

# Install Node.js and make tools
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs
RUN apt-get install -y build-essential

# Install node.js associated modules
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN cnpm install -g sails
RUN cnpm install -g grunt-cli
RUN cnpm install -g pm2

# Setup default work dir
WORKDIR /
