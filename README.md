# brew_flutter

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]

A MacOS desktop app for [Homebrew](https://brew.sh/), written using [Flutter](https://flutter.dev).

## Getting Started

For help getting started with Flutter, view the
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

This project uses [riverpod](https://riverpod.dev/) for global state managment and [flutter_hooks](https://github.com/rrousselGit/flutter_hooks) for widget state managment.

This projects follows [CLEAN architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html) with [feature project structure](https://codewithandrea.com/articles/flutter-project-structure/).

### Flutter version

Project's flutter version is 3.7.1. We recommend using [fvm](https://github.com/fluttertools/fvm) for managing flutter versions.

> You can alias `fvm flutter` to `flutter`

[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis

## How to commit

Commits should be :

- starting with a [gitmoji](https://gitmoji.dev/)
- without punctuation at end
- uppercase

Example :

```sh
💄 Add theme
```

---

## Running Tests

To run all unit and widget tests use the following command:

```sh
$ flutter test --coverage --test-randomize-ordering-seed random
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
$ genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
$ open coverage/index.html
```

---
