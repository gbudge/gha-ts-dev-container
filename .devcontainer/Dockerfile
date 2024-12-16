# Use the Node.js image with TypeScript pre-installed
FROM mcr.microsoft.com/devcontainers/typescript-node:18

# Install GitHub CLI for managing repositories and workflows
RUN apt-get update && \
    apt-get install -y gh && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*

# Set npm global install directory to a user-writable location
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

# Update PATH to include global npm binaries
ENV PATH=$NPM_CONFIG_PREFIX/bin:$PATH

# Install global npm tools as the non-root "node" user
USER node
RUN npm install -g typescript jest ts-jest eslint prettier

