# frozen_string_literal: true

require_relative './ci_job'

module CI
  # CI job that checks all files are staged for commit.
  class StageChecker < ::CI::CIJob
    # Process StageChecker.
    # @return {Void}
    def process
      git_status = `git status --porcelain`

      return if git_status.empty?

      end_with_error(-> { puts("StageChecker found unstaged changes:\n#{git_status}") })
    end
  end
end
