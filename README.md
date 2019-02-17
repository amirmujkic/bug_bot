<p align="center">
  <h2 align="center">MultiBug</h2>
  <p align="center">Error reporting via multiple platforms</p>
  <p align="center">
    <a href="http://badge.fury.io/rb/multi_bug)"><img src="https://badge.fury.io/rb/multi_bug.svg"/></a>
    <a href="https://travis-ci.org/amirmujkic/bug_bot)"><img src="https://travis-ci.org/amirmujkic/multi_bug.svg?branch=master"/></a>
  </p>
  <br>
</p>

<p align="center">
  <h1 align="center">MultiBug</h1>
  <p align="center">Error reporting via multiple platforms.</p>
  <p align="center">
    <a href="https://travis-ci.org/amirmujkic/bug_bot">
      <img alt="Build Status" src="https://travis-ci.org/amirmujkic/multi_bug.svg?branch=master">
    </a>
    <a href="http://badge.fury.io/rb/multi_bug">
      <img alt="Release" src="https://badge.fury.io/rb/multi_bug.svg">
    </a>
  </p>
</p>

---

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

    gem install multi_bug

Add the following to your Gemfile:

    gem "multi_bug", '~> 0.2.2'

After you've added the `multi_bug` gem, please install one of the gems for the monitoring platform you want to use.
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
  MultiBug.notify(exception)
end
```

#### Custom payload
If you need to add custom payload to the error report you can do this by providing an options hash.

```ruby
begin
  raise 'Robots are taking over!'
rescue => exception
  MultiBug.notify(exception, {
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
