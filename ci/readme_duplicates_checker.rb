# frozen_string_literal: true

require_relative './ci_job'

module CI
  # CI job that checks links in README.
  class ReadmeDuplicatesChecker < ::CI::CIJob
    # Process ReadmeDuplicatesChecker.
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
      readme = ::File.readlines('./README.md')

      solutions.each do |file_name|
        links_count = readme.count { |line| line.include?(file_name) }

        next if links_count == 1

        error =
          "ReadmeDuplicatesChecker ends with an error from #{file_name}."

        end_with_error(-> { puts(error) })
      end
    end
  end
end
