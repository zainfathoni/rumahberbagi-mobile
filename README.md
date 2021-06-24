# rumahberbagi_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## TODO

- Fix tests
- Setup Lefthook
  - flutter test
  - flutter analyze
- API call
- Compare all [the popular state management approaches](https://flutter.dev/docs/development/data-and-backend/state-mgmt/options)

## Project-specific prerequisites

Since [there is no such thing like NPM/NodeJS scripts](https://stackoverflow.com/a/49769659/3187014) in Dart, we need to manage our tooling and scripts manually. Most of the tools that we need are available in [Homebrew](https://brew.sh), so we are using a [Brewfile](https://thoughtbot.com/blog/brewfile-a-gemfile-but-for-homebrew) to manage those tooling dependencies using [Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle).

### Installations

Please make sure that [Homebrew](https://brew.sh) is already installed in your local machine. Then run this command to install all the defined dependencies in our [Brewfile](./Brewfile).

```shell
brew bundle
```

These are the tools that will be installed by that command above:

#### lcov

We need [lcov](http://ltp.sourceforge.net/coverage/lcov.php) to visualise the code coverage of our unit and integration tests.

#### Lefthook

We are using [Lefthook](https://github.com/evilmartians/lefthook) for [managing our Git pre-commit hooks across the contributors](https://blog.devgenius.io/easy-git-hooks-for-flutter-f2927cbbcfd4).

We are also using Lefthook for [running our commonly-used scripts](https://github.com/evilmartians/lefthook/blob/master/docs/full_guide.md#run-githook-group-directly).

## Commonly-used Scripts

### Generate and view code coverage

```shell
lefthook run coverage
```
