# frozen_string_literal: true

# https://leetcode.com/problems/longest-absolute-file-path/
# @param {String} input
# @return {Integer}
def length_longest_path(input)
  result = 0
  file_sizes = ::Array.new(input.size, 0)
  input.split("\n").each do |name|
    dir_level = name.count("\t")
    c_name = name.gsub("\t", '')
    part = dir_level.positive? ? file_sizes[dir_level - 1] + 1 : 0
    file_sizes[dir_level] = part + c_name.size

    result = [result, file_sizes[dir_level]].max if c_name.include?('.')
  end

  result
end
