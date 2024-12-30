# frozen_string_literal: true

# https://leetcode.com/problems/partition-labels/
# @param {String} s
# @return {Integer[]}
def partition_labels(s)
  last = ::Array.new(128, 0)
  (0...s.size).each { |i| last[s[i].ord] = i }

  j = 0
  anchor = 0
  result = []
  (0...s.size).each do |i|
    j = [j, last[s[i].ord]].max

    next unless i == j

    result << i - anchor + 1
    anchor = i + 1
  end

  result
end
