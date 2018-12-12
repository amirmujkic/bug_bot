# BugBot

[![Gem Version](https://badge.fury.io/rb/bug_bot.svg)](http://badge.fury.io/rb/bug_bot)

BugBot is a simple error monitoring gem that abstracts multiple reporting tools in one.

## Features
- Easily switch error monitoring provider by changing config only
- Supported adapters
  - [Airbrake](https://github.com/airbrake/airbrake-ruby)
  - [Bugsnag](https://github.com/bugsnag/bugsnag-ruby)
- Upcoming features
  - Aditional adapters for [Sentry](https://github.com/getsentry/raven-ruby) and [Rollbar](https://github.com/rollbar/rollbar-gem)
  - Advanced configuration
  - Support for common advanced features

## Getting started

To install, run:

    gem install bug_bot

Add the following to your Gemfile:

    gem "bug_bot", '~> 0.2.0'

After you've added the `bug_bot` gem, please install one of the gems for the monitoring platform you want to use.
To accomplish that, you can use one of the following installation guides:

 - [Airbrake](https://github.com/airbrake/airbrake-ruby#installation)
 - [Bugsnag](https://docs.bugsnag.com/platforms/ruby/rails/#installation)

## Usage

### Reporting exceptions

After installing one of the supported gems, reporting of unhandled exceptions should happen automatically and be visible in their respective monitoring dashboard.

Reporting of handled exceptions can be done with:

```ruby
begin
  raise 'Robots are taking over!'
rescue => exception
  BugBot.notify(exception)
end
```

#### Custom payload
If you need to add custom payload to the error report you can do this by providing an options hash.

```ruby
begin
  raise 'Robots are taking over!'
rescue => exception
  BugBot.notify(exception, {
    foo: {
      bar: 'baz'
    }
  })
end
```

### Changing the provider
Changing of the monitoring provider should be easily achieved just by installing/configuring the other gem.

## Tests

To test, run:

    bundle exec rspec

## Versioning

Read [Semantic Versioning](https://semver.org) for details. Briefly, it means:

- Major (X.y.z) - Incremented for any backwards incompatible public API changes.
- Minor (x.Y.z) - Incremented for new, backwards compatible, public API enhancements/fixes.
- Patch (x.y.Z) - Incremented for small, backwards compatible, bug fixes.

## Contributions

Read [CONTRIBUTING](CONTRIBUTING.md) for details.

## License

Copyright 2018 []().
Read [LICENSE](LICENSE.md) for details.

## History

Read [CHANGES](CHANGES.md) for details.
