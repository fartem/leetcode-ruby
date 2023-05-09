# frozen_string_literal: true

# https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/
# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  result = haystack.index(needle, 0)
  result.nil? ? -1 : result
end
