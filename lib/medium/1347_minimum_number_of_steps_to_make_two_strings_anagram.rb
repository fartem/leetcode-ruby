# frozen_string_literal: true

# https://leetcode.com/problems/minimum-number-of-steps-to-make-two-strings-anagram/
# @param {String} s
# @param {String} t
# @return {Integer}
def min_steps(s, t)
  s_letters = ::Array.new(128, 0)
  s.each_char { |c| s_letters[c.ord] += 1 }

  t_letters = ::Array.new(128, 0)
  t.each_char { |c| t_letters[c.ord] += 1 }

  result = 0

  (0...s_letters.size).each do |i|
    s_count = s_letters[i]
    t_count = t_letters[i]

    result += s_count - t_count if s_count > t_count
  end

  result
end
