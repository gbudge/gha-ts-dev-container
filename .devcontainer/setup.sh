#!/bin/bash

# Initialize Node.js project
if [ ! -f package.json ]; then
  npm init -y
fi

# Install GitHub Action dependencies
npm install @actions/core @actions/github

# Install dev dependencies
npm install --save-dev typescript jest @types/jest ts-jest eslint prettier

# Copy templates to project root
cp -r .devcontainer/templates/* .

# Initialize Jest
npx ts-jest config:init
