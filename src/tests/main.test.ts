import { greetUser } from '../main';

describe('greetUser', () => {
  it('returns a greeting when a name is provided', async () => {
    const result = await greetUser('Alice');
    expect(result).toBe('Hello, Alice!');
  });

  it('throws an error when no name is provided', async () => {
    await expect(greetUser('')).rejects.toThrow('Name is required');
  });
});
