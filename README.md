# Sui Move Test Action

Run `npx scaf test` on your Sui project directory. This in turn runs:
- The tests in `.move` files under the `./packages/` directory (by calling `sui move test`)
- The Mocha & Chai tests in the `./test/` directory.

Read more about [Scaf and how to write tests](https://github.com/cNikolaou/scaf) for your Sui project.

Test your Sui Move packages with:

```yaml
name: Test Sui Move Packages

on: [push]

jobs:
  test-action:
    name: Test Sui Move Packages
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Test Sui Move
        uses: cNikolaou/test-sui-move@v0.1.1-alpha.1
```