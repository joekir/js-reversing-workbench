FROM ubuntu:18.04

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    curl \
    git \
    silversearcher-ag \
    unzip \
    vim \
    wget

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update \
    && apt-get install -y nodejs yarn \
    && npm install -g typescript

# Set up a baked-in way to know which commit this image came from:
ARG SOURCE_URL
RUN echo $SOURCE_URL > /source_url

# illuminatejs.com
RUN mkdir -p /opt/illuminate && cd /opt/illuminate \
    && npm install @babel/core @babel/cli \
    && git clone https://github.com/geeksonsecurity/illuminatejs.git \
    && cd illuminatejs/babel-plugin-deobfuscate && yarn install && yarn build

COPY volumes/scripts/illuminate.sh /usr/local/bin

WORKDIR /tmp/samples
CMD ["bash"]
