# frozen_string_literal: true

# https://leetcode.com/problems/decrypt-string-from-alphabet-to-integer-mapping/
# @param {String} s
# @return {String}
def freq_alphabets(s)
  result = []
  p = 0
  n = s.length
  while p < n
    c = s[p]
    if %w[1 2].include?(c) && p + 2 < n && s[p + 2] == '#'
      num = s[p...p + 2].to_i
      result << (num + 96).chr
      p += 3
    else
      result << (c.ord + 48).chr
      p += 1
    end
  end

  result.join
end
