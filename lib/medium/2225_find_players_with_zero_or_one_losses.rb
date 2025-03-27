# frozen_string_literal: true

# https://leetcode.com/problems/find-players-with-zero-or-one-losses/
# @param {Integer[][]} matches
# @return {Integer[][]}
def find_winners(matches)
  zeros = ::Set.new
  ones = ::Set.new
  marks = ::Set.new

  matches.each do |match|
    w = match[0]

    zeros << w unless marks.include?(w)

    l = match[1]

    if marks.include?(l)
      ones.delete(l)
    else
      ones << l
      marks << l
    end

    zeros.delete(l)
  end

  [zeros.sort, ones.sort]
end
