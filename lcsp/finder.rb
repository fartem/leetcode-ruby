# frozen_string_literal: true

module LCSP
  # Solutions finder.
  class LCSPFinder
    # Pass path to solution (repository from GitHub)
    # and LeetCode problem number
    # to find solution in repository.
    # @param {String} path
    # @param {String} number
    def initialize(path, number)
      @path = path
      @number = number
    end

    # Find solution with passed params.
    # @return {String}
    def solution
      dirs = []
      fill_directories(@path, dirs)

      dirs.each do |directory|
        ::Dir.foreach(directory) do |entry|
          return "#{directory}/#{entry}" if entry.start_with?(@number)
        end
      end
    end

    # Find all directories in repository.
    # @param {String} path
    # @param {String[]} dirs
    def fill_directories(path, dirs)
      ::Dir.foreach(path).reject { |name| name.start_with?('.') }.each do |entry|
        unless ::File.file?("#{path}/#{entry}")
          dirs << "#{path}/#{entry}"
          fill_directories("#{path}/#{entry}", dirs)
        end
      end
    end
  end
end
