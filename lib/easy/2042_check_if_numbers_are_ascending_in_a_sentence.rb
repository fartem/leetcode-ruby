# frozen_string_literal: true

# https://leetcode.com/problems/check-if-numbers-are-ascending-in-a-sentence/
# @param {String} s
# @return {Boolean}
def are_numbers_ascending(s)
  prev = -1
  s.split.each do |word|
    next unless word[0] =~ /\d/

    num = word.to_i

    return false if prev >= num

    prev = num
  end

  true
end
