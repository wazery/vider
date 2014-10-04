require "bundler/gem_tasks"
# require "rspec/core/rake_task"

desc "Bundle the gem"
task :bundle do
  sh 'bundle install'
  sh 'gem build *.gemspec'
  sh 'gem install *.gem'
  sh 'rm *.gem'
end

task(:default).clear
task :default => :bundle

# Default directory to look in is '/spec'
# Run with 'rake spec'
# RSpec::Core::RakeTask.new(:spec) do |task|
  # task.rspec_opts = ['--color', '--format', 'documentation']
# end

# task default: :spec

