# frozen_string_literal: true

require_relative './ci_job'

module CI
  # CI job that checks paths in README.
  class ReadmePathsChecker < ::CI::CIJob
    # Process ReadmePathsChecker.
    # @return {Void}
    def process
      check('easy')
      check('medium')
      check('hard')
    end

    private

    # @param {String} difficulty
    # @return {Void}
    def check(difficulty)
      readme = ::File.read('./README.md')

      path = "./lib/#{difficulty}"
      solutions = ::Dir.entries(path).reject { |file_name| file_name.start_with?('.') }
      solutions.each do |file_name|
        solution_path = "./lib/#{difficulty}/#{file_name}"
        tests_path = "./test/#{difficulty}/test_#{file_name}"

        has_solution = readme.include?(solution_path)
        has_tests = readme.include?(tests_path)

        next if has_solution && has_tests

        puts(readme)

        error = "ReadmePathsChecker ends with an error from #{file_name}."
        error << "\nHas solution: #{has_solution} with path #{solution_path}"
        error << "\nHas tests: #{has_tests} with path #{tests_path}"

        end_with_error(-> { puts(error) })
      end
    end
  end
end
