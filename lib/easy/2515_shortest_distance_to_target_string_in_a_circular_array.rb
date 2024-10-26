# frozen_string_literal: true

# https://leetcode.com/problems/shortest-distance-to-target-string-in-a-circular-array/
# @param {String[]} words
# @param {String} target
# @param {Integer} start_index
# @return {Integer}
def closet_target(words, target, start_index)
  max = ::Float::INFINITY
  result = max

  words.each_with_index do |word, i|
    next unless word == target

    l = (i - start_index).abs
    result = [result, l, words.length - l].min
  end

  result == max ? -1 : result
end
