require 'rubygems'
require 'bundler/setup'

require 'puppetlabs_spec_helper/rake_tasks'
require 'puppet/version'
require 'puppet/vendor/semantic/lib/semantic'
require 'puppet-lint/tasks/puppet-lint'
require 'puppet-syntax/tasks/puppet-syntax'
require 'rubocop/rake_task'
require 'ci/reporter/rake/rspec'

RuboCop::RakeTask.new

exclude_paths = [
  '.bundle/**/*',
  'thirdparty/**/**/*',
  'modules/**/**/*',
  'spec/**/*'
]

Rake::Task[:lint].clear

PuppetLint::RakeTask.new :lint do |config|
  # Pattern of files to check, defaults to `**/*.pp`
  # config.pattern = 'modules'

  # Pattern of files to ignore
  # config.ignore_paths = ['modules/apt', 'modules/stdlib']
  config.ignore_paths = exclude_paths

  # List of checks to disable
  config.disable_checks = %w(documentation
                             140chars
                             roles_resource_declaration
                             relative_classname_inclusion
                             class_inherits_from_params_class)

  # Should puppet-lint prefix it's output with the file being checked,
  # defaults to true
  config.with_filename = false

  # Should the task fail if there were any warnings, defaults to false
  config.fail_on_warnings = true

  # Format string for puppet-lint's output (see the puppet-lint help output
  # for details
  config.log_format = '%{path}:%{linenumber}:%{check}:%{KIND}:%{message}'

  # Print out the context for the problem, defaults to false
  config.with_context = true

  # Enable automatic fixing of problems, defaults to false
  config.fix = false

  # Show ignored problems in the output, defaults to false
  config.show_ignored = true

  # Compare module layout relative to the module root
  config.relative = true
end

PuppetSyntax.exclude_paths = exclude_paths

desc 'Run acceptance tests'
RSpec::Core::RakeTask.new(:acceptance) do |t|
  t.rspec_opts = ['--color']
  t.pattern = 'spec/acceptance'
end

desc 'Run syntax, lint, and spec tests.'
task test: [
  :puppetfile,
  :syntax,
  :lint,
  :rubocop,
  :spec
]
