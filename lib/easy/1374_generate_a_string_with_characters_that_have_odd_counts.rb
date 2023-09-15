# frozen_string_literal: true

# https://leetcode.com/problems/generate-a-string-with-characters-that-have-odd-counts/
# @param {Integer} n
# @return {String}
def generate_the_string(n)
  n.even? ? "#{'a' * (n - 1)}b" : 'a' * n
end
