# frozen_string_literal: true

# https://leetcode.com/problems/find-the-encrypted-string/
# @param {String} s
# @param {Integer} k
# @return {String}
def get_encrypted_string(s, k)
  result = ::Array.new(s.size)

  (0...s.size).each do |i|
    if i + k < s.size
      result << s[i + k]
    else
      index = i + k

      index = (s.size - index).abs until index < s.size

      result << s[index]
    end
  end

  result.join
end
