# frozen_string_literal: true

# https://leetcode.com/problems/longest-repeating-character-replacement/
# @param {String} s
# @param {Integer} k
# @return {Integer}
def character_replacement(s, k)
  freq = ::Array.new(128, 0)
  f = 0
  e = 0
  max = 0
  result = 0

  while e < s.size
    i = s[e].ord
    freq[i] += 1
    max = [max, freq[i]].max

    curr = e - f + 1
    if curr - max > k
      freq[s[f].ord] -= 1
      f += 1
    end

    result = [result, e - f + 1].max

    e += 1
  end

  result
end
