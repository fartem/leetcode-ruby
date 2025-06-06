# frozen_string_literal: true

require 'find'

module LCSC
  # Solutions counter.
  class LCSCCounter
    # @param {String} path
    def initialize(path)
      @path = path
    end

    # @return {Integer}
    def count
      dir_sub = "#{@path}/lib"

      easy = find_for_dir("#{dir_sub}/easy")
      medium = find_for_dir("#{dir_sub}/medium")
      hard = find_for_dir("#{dir_sub}/hard")

      easy + medium + hard
    end

    private

    def find_for_dir(dir)
      ::Find.find(dir).count { |file| ::File.file?(file) }
    end
  end
end
