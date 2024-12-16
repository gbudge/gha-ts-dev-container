# GitHub Actions Dev Container

This repository provides a reusable Dev Container for developing GitHub Actions using Node.js and TypeScript.

## Features

Pre-installed Tools:
   * Node.js and TypeScript
   * GitHub CLI (gh)
   * Common libraries: `@actions/core`, `@actions/github`
   * Testing tools: Jest and ts-jest
   * Linting and formatting: ESLint and Prettier
   * Example `action.yml`, TypeScript configuration, example code, and tests.

## Quick Start

1. Clone this repository:
   ```bash
   git clone <repository-url> my-github-action
   cd my-github-action
   ```

2. Open the folder in VS Code and start the Dev Container.

3. Run the setup script to initialize a new project:
   ```bash
   .devcontainer/setup.sh
   ```

4. Start developing your GitHub Action in the `src/` directory!

5. Build and test with:
   ```bash
   npm run build
   npm run test
   ```

6. Happy coding.

## Project Structure

Below is the structure of a project initialized with this Dev Container:

```bash
.github/           # GitHub-specific files.
.devcontainer/     # Dev Container configuration and setup scripts.
README.md          # Documentation for using this repository.
src/
   action.yml      # Sample GitHub Action metadata.
   tsconfig.json   # TypeScript configuration.
   src/            # Sample TypeScript source code.
   tests/          # Sample Jest tests.
```

## Running Tests

This repository includes a sample test for the GitHub Action logic. To run the tests:

1. Ensure you have run the setup script to initialize the test environment:
   ```bash
   .devcontainer/setup.sh
   ```

2. Run the tests:
   ```bash
   npm test
   ```

3. To view the test coverage report:
   ```bash
   npm test -- --coverage
   ```

## Adding Your Own Action

1. Edit the `action.yml` file in the root of your project to define the action inputs and outputs.

2. Implement your action logic in the `src/main.ts` file.

3. Write corresponding tests in the `tests/` directory to ensure your action behaves as expected.

## License

This repository is licensed under the MIT License. See the `LICENSE` file for details.
