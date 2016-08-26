#!/bin/sh

brew update
brew upgrade
brew install mongo
mkdir -p $HOME/mongodb/db
mkdir -p $HOME/mongodb/logs
mongod --fork --logpath $HOME/mongodb/logs/mongo-logs --dbpath $HOME/mongodb/db