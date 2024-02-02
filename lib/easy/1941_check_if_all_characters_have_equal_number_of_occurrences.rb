# frozen_string_literal: true

# https://leetcode.com/problems/check-if-all-characters-have-equal-number-of-occurrences/
# @param {String} s
# @return {Boolean}
def are_occurrences_equal(s)
  chars = ::Array.new(128, 0)
  s.each_byte { |b| chars[b] += 1 }

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
