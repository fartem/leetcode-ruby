# frozen_string_literal: true

require_relative './ci_job'

module CI
  # CI job that checks last link in README reachable status.
  class DuplicateLinksChecker < CIJob
    # Process LastReachableChecker
    # @return {Void}
    def process
      check
    end

    private

    # @return {Void}
    def check
      links = []

      regex = %r{https://[^\s()<>]+(?:\([\w\d]+\)|([^[:punct:]\s]|/))}

      ::File.readlines('README.md').each do |line|
        link = line.match(regex)

        next unless link

        links << link[0]
      end

      return if links.size == links.uniq.size

      error = "DuplicateLinksChecker ends with an error from. You have #{links.size - links.uniq.size} duplicates."

      end_with_error(-> { puts(error) })
    end
  end
end
