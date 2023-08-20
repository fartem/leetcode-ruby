# frozen_string_literal: true

# https://leetcode.com/problems/repeated-substring-pattern/
# @param {String} s
# @return {Boolean}
def repeated_substring_pattern(s)
  length = s.length
  (1...length).step(1) do |i|
    if (length % i).zero?
      sub = s[0, i]

      return true if (sub * (length / sub.length)) == s
    end
  end

  false
end
