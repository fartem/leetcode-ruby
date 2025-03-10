# frozen_string_literal: true

# https://leetcode.com/problems/remove-all-occurrences-of-a-substring/
# @param {String} s
# @param {String} part
# @return {String}
def remove_occurrences(s, part)
  result = s.dup
  index = result.index(part)

  while index
    result.slice!(index, part.length)
    index = result.index(part)
  end

  result
end
