# frozen_string_literal: true

# https://leetcode.com/problems/find-center-of-star-graph/
# @param {Integer[][]} edges
# @return {Integer}
def find_center(edges)
  edges[0][0] == edges[1][0] || edges[0][0] == edges[1][1] ? edges[0][0] : edges[0][1]
end
