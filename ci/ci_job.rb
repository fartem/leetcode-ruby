# frozen_string_literal: true

# Core module for all CI classes
module CI
  # Base CI job abstraction.
  # Use it to create concrete CI jobs.
  class CIJob
    PROCESS_NO_IMPL_ERROR = "No implementation for process in #{self.class.name}"
    private_constant :PROCESS_NO_IMPL_ERROR

    # Main entry of job class that runs your check.
    def run
      puts("#{self.class.name} started...")
      process
      puts("#{self.class.name} ended without errors!")
    end

    # Use this method in your realization when task completed with error.
    def end_with_error(details)
      details.call
      puts("#{self.class.name} ended with an error.")
      exit(1)
    end

    # Job realization.
    # You should override this method in your realization.
    def process
      raise(::PROCESS_NO_IMPL_ERROR)
    end
  end
end
