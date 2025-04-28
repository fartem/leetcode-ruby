# frozen_string_literal: true

require 'rake/clean'

task default: %i[clean rubocop test ci]

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
require_relative './ci/master_checker'
require_relative './ci/links_checker'
require_relative './ci/readme_duplicates_checker'
require_relative './ci/readme_paths_checker'
require_relative './ci/tests_checker'
require_relative './ci/version_checker'
require_relative './ci/duplicate_links_checker'
require_relative './ci/stage_checker'
task :ci do
  [
    ::CI::MasterChecker.new,
    ::CI::LinksChecker.new,
    ::CI::ReadmeDuplicatesChecker.new,
    ::CI::ReadmePathsChecker.new,
    ::CI::TestsChecker.new,
    ::CI::VersionChecker.new,
    ::CI::DuplicateLinksChecker.new,
    ::CI::StageChecker.new
  ].each(&:process)
end
