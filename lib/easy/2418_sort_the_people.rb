# frozen_string_literal: true

# https://leetcode.com/problems/sort-the-people/
# @param {String[]} names
# @param {Integer[]} heights
# @return {String[]}
def sort_people(names, heights)
  values = {}
  (0...heights.length).each { |i| values[heights[i]] = i }
  heights.sort!

  heights.map { |height| names[values[height]] }.reverse
end
