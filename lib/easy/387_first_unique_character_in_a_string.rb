# frozen_string_literal: true

# https://leetcode.com/problems/first-unique-character-in-a-string/
# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  chars = ::Hash.new(0)
  s.each_char { |c| chars[c] += 1 }
  (0...s.length).each { |i| return i if chars[s[i]] == 1 }

  -1
end
