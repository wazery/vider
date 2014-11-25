#!/user/bin/env rake
require "bundler/gem_tasks"

# A rake task to create a dummy Rails app for testing
require "rails/dummy/tasks"
# require "rspec/core/rake_task"

desc "Bundle the gem"
task :bundle do
  sh 'bundle install'
  sh 'gem build *.gemspec'
  sh 'gem install *.gem'
  sh 'rm *.gem'
end

# task(:default).clear
Bundler::GemHelper.install_tasks

require 'rake/testtask'

desc "Load the tests"
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end

task default: :test

# Default directory to look in is '/spec'
# Run with 'rake spec'
# RSpec::Core::RakeTask.new(:spec) do |task|
  # task.rspec_opts = ['--color', '--format', 'documentation']
# end

# task default: :spec
