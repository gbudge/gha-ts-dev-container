#!/usr/bin/env bash

# Initialize Node.js project
if [ ! -f package.json ]; then
  npm init -y

  # Set a valid name for the project
  sed -i '' 's/"name": ".*"/"name": "gha-pr-validator"/' package.json
fi

# Install GitHub Action dependencies
npm install @actions/core @actions/github

# Install dev dependencies
npm install --save-dev typescript jest @types/jest ts-jest eslint prettier

# Initialize Jest (if provided jest.config.js is inadequate)
# npx ts-jest config:init
