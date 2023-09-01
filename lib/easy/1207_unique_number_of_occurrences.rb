# frozen_string_literal: true

# https://leetcode.com/problems/unique-number-of-occurrences/
# @param {Integer[]} arr
# @return {Boolean}
def unique_occurrences(arr)
  nums_and_count = arr.tally
  uniq = nums_and_count.values.to_set

  nums_and_count.length == uniq.length
end
