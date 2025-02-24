# frozen_string_literal: true

# https://leetcode.com/problems/number-of-good-ways-to-split-a-string/
# @param {String} s
# @return {Integer}
def num_splits(s)
  l_chars = ::Set.new
  r_chars = ::Set.new
  l_count = ::Array.new(s.size, 0)
  r_count = ::Array.new(s.size, 0)

  s.length.times do |i|
    l_c = s[i]

    l_chars.add(l_c) unless l_chars.include?(l_c)

    l_count[i] = l_chars.size
    r_index = s.length - i - 1
    r_c = s[r_index]

    r_chars.add(r_c) unless r_chars.include?(r_c)

    r_count[r_index] = r_chars.size
  end

  result = 0
  l_p = 0
  r_p = 1

  while l_p != s.size && r_p != s.size
    result += 1 if l_count[l_p] == r_count[r_p]

    l_p += 1
    r_p += 1
  end

  result
end
