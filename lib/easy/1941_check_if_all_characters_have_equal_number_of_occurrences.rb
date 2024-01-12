# frozen_string_literal: true

# https://leetcode.com/problems/check-if-all-characters-have-equal-number-of-occurrences/description/
# @param {String} s
# @return {Boolean}
def are_occurrences_equal(s)
  chars = ::Array.new(26, 0)
  (0...s.length).each do |i|
    index = s[i].ord - 97
    chars[index] += 1
  end

  count = 0
  chars.each do |c|
    next if c.zero?

    if count.zero?
      count = c
    elsif count != c
      return false
    end
  end

  true
end
