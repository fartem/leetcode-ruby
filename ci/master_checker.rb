# frozen_string_literal: true

require_relative './ci_job'

module CI
  # CI job that checks that we are not in master branch.
  class MasterChecker < CIJob
    # Process MasterChecker.
    # @return {Void}
    def process
      current_branch = `git rev-parse --abbrev-ref HEAD`.strip

      return unless current_branch == 'master'

      end_with_error(-> { puts('MasterChecker ends with an error. You cannot commit directly to master branch.') })
    end
  end
end
