# frozen_string_literal: true

# https://leetcode.com/problems/minimum-number-of-vertices-to-reach-all-nodes/
# @param {Integer} n
# @param {Integer[][]} edges
# @return {Integer[]}
def find_smallest_set_of_vertices(n, edges)
  result = []
  reachable = ::Array.new(n, 0)

  edges.each { |edge| reachable[edge[1]] = 1 }

  (0...n).each { |i| result << i if reachable[i].zero? }

  result
end
