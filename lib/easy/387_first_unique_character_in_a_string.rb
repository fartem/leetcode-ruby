# frozen_string_literal: true

# https://leetcode.com/problems/first-unique-character-in-a-string/
# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  chars = ::Hash.new(0)
  (0..s.length).step(1) do |i|
    chars[s[i]] += 1
  end
  (0...s.length).step(1) do |i|
    return i if chars[s[i]] == 1
  end

  -1
end
