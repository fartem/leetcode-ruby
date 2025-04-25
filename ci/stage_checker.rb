# frozen_string_literal: true

require_relative './ci_job'

module CI
  # CI job that add all files to stage for commit.
  class StageChecker < ::CI::CIJob
    # Process StageChecker.
    # @return {Void}
    def process = `git add -u`
  end
end
