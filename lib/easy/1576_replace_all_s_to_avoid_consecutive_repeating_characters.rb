# frozen_string_literal: true

# https://leetcode.com/problems/replace-all-s-to-avoid-consecutive-repeating-characters/
# @param {String} s
# @return {String}
def modify_string(s)
  offset = -1
  result = []
  (0...s.length).each do |i|
    c = s[i]
    if c == '?'
      offset += 1
      offset = 0 if offset == 26

      candidate = (97 + offset).chr
      prev = i.zero? ? '0' : s[i - 1]
      nxt = i == s.length - 1 ? '0' : s[i + 1]

      while candidate == prev || candidate == nxt
        offset += 1
        offset = 0 if offset == 26
        candidate = (97 + offset).chr
      end

      result << candidate
    else
      result << c
    end
  end

  result.join
end
