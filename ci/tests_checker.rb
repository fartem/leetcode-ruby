# frozen_string_literal: true

require_relative './ci_job'

module CI
  # CI job that checks tests for solutions.
  class TestsChecker < ::CI::CIJob
    # Process TestsChecker.
    def process
      check('easy')
    end

    private

    # @param {String} difficulty
    def check(difficulty)
      path = "./lib/#{difficulty}"
      solutions = ::Dir.entries(path).reject { |file_name| file_name.start_with?('.') }
      solutions.each do |file_name|
        unless ::File.exist?("./test/#{difficulty}/test_#{file_name}")
          puts("TestsChecker ends with error from #{file_name}.")
          exit(1)
        end
      end
    end
  end
end

::CI::TestsChecker.new.run
