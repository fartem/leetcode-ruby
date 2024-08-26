# frozen_string_literal: true

require_relative './ci_job'

module CI
  # CI job that checks tests for solutions.
  class TestsChecker < ::CI::CIJob
    # Process TestsChecker.
    # @return {Void}
    def process
      check('easy')
      check('medium')
    end

    private

    # @param {String} difficulty
    # @return {Void}
    def check(difficulty)
      path = "./lib/#{difficulty}"
      solutions = ::Dir.entries(path).reject { |file_name| file_name.start_with?('.') }
      solutions.each do |file_name|
        next if ::File.exist?("./test/#{difficulty}/test_#{file_name}")

        end_with_error(-> { puts("TestsChecker ends with an error from #{file_name}.") })
      end
    end
  end
end
