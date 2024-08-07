# frozen_string_literal: true

require_relative './ci_job'

module CI
  # CI job that checks links in README.
  class ReadmeChecker < ::CI::CIJob
    # Process ReadmeChecker.
    # @return {Void}
    def process
      check('easy')
    end

    private

    # @param {String} difficulty
    # @return {Void}
    def check(difficulty)
      path = "./lib/#{difficulty}"
      solutions = ::Dir.entries(path).reject { |file_name| file_name.start_with?('.') }
      readme = ::File.readlines('./README.md')

      solutions.each do |file_name|
        links_count = readme.count { |line| line.include?(file_name) }

        end_with_error(-> { puts("ReadmeChecker ends with an error from #{file_name}.") }) if links_count != 1
      end
    end
  end
end
