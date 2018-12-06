# frozen_string_literal: true

$LOAD_PATH.append File.expand_path("lib", __dir__)
require "bug_bot/identity"

Gem::Specification.new do |spec|
  spec.name = BugBot::Identity.name
  spec.version = BugBot::Identity.version
  spec.platform = Gem::Platform::RUBY
  spec.authors = ["Amir Mujkic"]
  spec.email = ["amirmujk@gmail.com"]
  spec.homepage = ""
  spec.summary = ""
  spec.license = "MIT"

  spec.metadata["changelog_uri"] = "https://github.com/amirmujkic/bug_bot/blob/master/CHANGELOG.md"

  spec.required_ruby_version = "~> 2.5.3"
  spec.add_development_dependency "pry", "~> 0.10"
  spec.add_development_dependency "pry-byebug", "~> 3.5"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "rspec", "~> 3.8"
  spec.add_development_dependency "rubocop", "~> 0.60"
  spec.add_development_dependency "rubocop-rspec", "~> 1.30"

  spec.files = Dir["lib/**/*"]
  spec.extra_rdoc_files = Dir["README*", "LICENSE*"]
  spec.require_paths = ["lib"]
end
