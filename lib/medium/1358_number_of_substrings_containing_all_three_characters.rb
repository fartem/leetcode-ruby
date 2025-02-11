# frozen_string_literal: true

# https://leetcode.com/problems/number-of-substrings-containing-all-three-characters/
# @param {String} s
# @return {Integer}
def number_of_substrings(s)
  chars = ::Array.new(3, 0)
  left = 0
  result = 0

  (0...s.size).each do |i|
    chars[s[i].ord - 97] += 1

    while chars[0].positive? && chars[1].positive? && chars[2].positive?
      result += s.size - i

      chars[s[left].ord - 97] -= 1

      left += 1
    end
  end

  result
end
