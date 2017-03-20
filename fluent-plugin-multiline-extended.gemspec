# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = 'fluent-plugin-multiline-extended'
  gem.version       = '1.0.0'
  gem.authors       = ['Alex Yamauchi']
  gem.email         = ['alex.yamauchi@hotschedules.com']
  gem.licenses      = [ 'Apache-2.0']
  gem.description   = 'Extend tail and parser plugins to support logs with separators beyond just a single-line regex to match the first line.'
  gem.summary       = 'Fluent plugin extending the multiline parser'
  gem.homepage      = 'https://github.com/bodhi-space/fluent-plugin-multiline-extended'

  gem.files         = `git ls-files`.split($/)
  gem.files.reject! { |fn| fn.include? 'doc/' }
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'fluentd'
end
