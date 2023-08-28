# frozen_string_literal: true

# https://leetcode.com/problems/longest-uncommon-subsequence-i/
# @param {String} a
# @param {String} b
# @return {Integer}
def find_lu_slength(a, b)
  a == b ? -1 : [a.length, b.length].max
end
