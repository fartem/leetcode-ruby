# frozen_string_literal: true

# https://leetcode.com/problems/relative-ranks/
# @param {Integer[]} score
# @return {String[]}
def find_relative_ranks(score)
  copy = []
  copy.replace(score)
  copy = copy.sort.reverse

  positions = {}
  copy.each_with_index do |val, index|
    positions[val] = index + 1
  end

  result = []
  score.each do |val|
    value = positions[val]
    result << case value
              when 1
                'Gold Medal'
              when 2
                'Silver Medal'
              when 3
                'Bronze Medal'
              else
                value.to_s
              end
  end

  result
end
