$LOAD_PATH.append File.expand_path('lib', __dir__)
require 'multi_bug/identity'

Gem::Specification.new do |spec|
  spec.name = MultiBug::Identity.name
  spec.version = MultiBug::Identity.version
  spec.platform = Gem::Platform::RUBY
  spec.authors = ['Amir Mujkic']
  spec.email = ['amirmujk@gmail.com']
  spec.homepage = 'https://github.com/amirmujkic/multi_bug'
  spec.summary = 'A simple gem that abstracts error monitoring'
  spec.license = 'MIT'
  spec.metadata['changelog_uri'] = 'https://github.com/amirmujkic/multi_bug/blob/master/CHANGELOG.md'

  spec.files         = Dir['lib/**/*', 'Rakefile', 'README.md']
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'pry-byebug', '~> 3.5'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'rspec', '~> 3.8'
  spec.add_development_dependency 'rubocop', '~> 0.60'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.30'
  spec.add_development_dependency 'simplecov', '~> 0.16.0'
end
