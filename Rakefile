# frozen_string_literal: true

require 'rake/clean'

task default: %i[clean rubocop test]

desc 'Run RuboCop'
require 'rubocop/rake_task'
::RuboCop::RakeTask.new(:rubocop) do |task|
  task.fail_on_error = true
end

desc 'Run unit tests'
require 'rake/testtask'
::Rake::TestTask.new(:test) do |task|
  task.libs << 'lib' << 'test'
  task.pattern = 'test/**/test_*.rb'
  task.verbose = true
end

desc 'Run all custom checks for CI'
# require_relative './ci/last_reachable_checker'
require_relative './ci/links_checker'
require_relative './ci/readme_checker'
require_relative './ci/tests_checker'
require_relative './ci/version_checker'
task :ci do
  # ::CI::LastReachableChecker.new.process
  ::CI::LinksChecker.new.process
  ::CI::ReadmeChecker.new.process
  ::CI::TestsChecker.new.process
  ::CI::VersionChecker.new.process
end
