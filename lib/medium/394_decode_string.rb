# frozen_string_literal: true

# https://leetcode.com/problems/decode-string/
# @param {String} s
# @return {String}
def decode_string(s)
  last = s.rindex('[')

  return s if last.nil?

  p = last - 1
  while p >= 0
    break unless s[p] =~ /\d/

    p -= 1
  end

  count = s[p + 1..last - 1].to_i
  r_s = s[last + 1...s.index(']', last)] * count
  s = s.sub(s[p + 1..s.index(']', p + 1)], r_s)

  decode_string(s)
end
