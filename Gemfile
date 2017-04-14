source ENV['GEM_SOURCE'] || "https://rubygems.org"

group :test do
  gem 'rake', require: false
  gem 'puppet', ENV['PUPPET_GEM_VERSION'] || '~> 4.7.0', require: false
  gem 'facter', ENV['FACTER_GEM_VERSION'] || '~> 2.4.6', require: false
  gem 'rspec', '> 3.2.0', require: false
  gem 'rspec-puppet', '>= 2.5.0', require: false
  gem 'puppet-lint', '= 2.0.2', require: false
  gem 'puppetlabs_spec_helper', require: false
  gem 'r10k', require: false
  gem 'puppetclassify', require: false
  gem 'rspec-puppet-utils', require: false
  gem 'rspec-puppet-facts', require: false
  gem 'rubocop', '0.43.0', require: false
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
  gem 'guard-rake', require: false
  gem 'listen', '< 3.1.0', require: false
  gem 'hiera-eyaml', require: false
  gem 'parallel_tests', require: false

  gem 'ci_reporter', require: false
  gem 'ci_reporter_rspec', require: false

  gem 'puppet-lint-absolute_classname-check', require: false
  gem 'puppet-lint-empty_string-check', require: false
  gem 'puppet-lint-leading_zero-check', require: false
  gem 'puppet-lint-roles_and_profiles-check', require: false
  #gem 'puppet-lint-spaceship_operator_without_tag-check', require: false
  gem 'puppet-lint-undef_in_function-check', require: false
  gem 'puppet-lint-unquoted_string-check', require: false
  gem 'puppet-lint-variable_contains_upcase', require: false
end

group :system_tests do
  gem 'beaker', ENV['BEAKER_VERSION'] || '~> 2.37.0'
  gem 'beaker-rspec', ENV['BEAKER_RSPEC_VERSION'] || '~> 5.3.0'
  gem 'serverspec',                    require: false
  gem 'beaker-puppet_install_helper',  require: false
end

group :workaround do
  gem 'rainbow', '~>2.0', '!=2.2.1'
end

# vim:ft=ruby
