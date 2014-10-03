require "rspec/core/rake_task"
require "bundler/gem_tasks"

# Default directory to look in is '/spec'
# Run with 'rake spec'
RSpec::Core::RakeTask.new(:spec) do |task|
  task.rspec_opts = ['--color', '--format', 'nested']
end

task default: :spec

