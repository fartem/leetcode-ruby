# frozen_string_literal: true

require_relative './ci_job'

module CI
  # CI job that checks links in solutions.
  class LinksChecker < ::CI::CIJob
    # Process LinksChecker.
    def process
      check('easy')
    end

    private

    # @param {String} difficulty
    def check(difficulty)
      path = "./lib/#{difficulty}"
      solutions = ::Dir.entries(path).reject { |file_name| file_name.start_with?('.') }
      solutions.each do |file_name|
        lines = ::IO.readlines("#{path}/#{file_name}")
        has_comment = false
        lines.each do |line|
          if line.start_with?('# https://leetcode.com/')
            has_comment = true
            break
          end
        end

        end_with_error(-> { puts("LinksChecker ends with an error from #{file_name}.") }) unless has_comment
      end
    end
  end
end
