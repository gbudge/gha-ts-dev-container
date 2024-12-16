import * as core from '@actions/core';

export async function greetUser(name: string): Promise<string> {
  if (!name) {
    throw new Error('Name is required');
  }
  const greeting = `Hello, ${name}!`;
  core.info(greeting);
  return greeting;
}

// Main entry point for the GitHub Action
async function run(): Promise<void> {
  try {
    const name = core.getInput('name', { required: true });
    await greetUser(name);
  } catch (error) {
    if (error instanceof Error) core.setFailed(error.message);
  }
}

run();
