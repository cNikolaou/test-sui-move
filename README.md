# Sui Move Test Action

Run `npx scaf test` on your Sui project directory. This in turn runs:
- The tests in `.move` files under the `./packages/` directory (by calling `sui move test`)
- The Mocha & Chai tests in the `./test/` directory.

Read more about [Scaf and how to write tests](https://github.com/cNikolaou/scaf) for your Sui project.