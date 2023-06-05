#!/bin/bash

NODE_VERSION=v14.16.0
NVM_DIR=$HOME/.nvm
NPM_REGISTRY=https://registry.npm.taobao.org
# PATH="$HOME/.nvm/versions/node/${NODE_VERSION}/bin/:${PATH}"
NPM_REGISTRY=https://registry.npm.taobao.org
# NVM_NODEJS_ORG_MIRROR=http://npm.taobao.org/mirrors/node

sed -i -e 's/\r$//' $HOME/nvm-write-bashrc.sh \
    && chmod 755 $HOME/nvm-write-bashrc.sh \
    && cd $HOME \
    && tar -zxvf $HOME/nvm-node-v14.16.0.tar.gz \
    && bash $HOME/nvm-write-bashrc.sh \
    && . "$NVM_DIR/nvm.sh" \
    && nvm install ${NODE_VERSION} \
    && nvm use ${NODE_VERSION} \
    && nvm alias default ${NODE_VERSION} \
    && npm config set registry ${NPM_REGISTRY} \
    && rm -rf $HOME/nvm-node-v14.16.0.tar.gz \
    && rm -rf $HOME/nvm-write-bashrc.sh