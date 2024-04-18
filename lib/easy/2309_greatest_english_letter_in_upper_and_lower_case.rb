# frozen_string_literal: true

# https://leetcode.com/problems/greatest-english-letter-in-upper-and-lower-case/
# @param {String} s
# @return {String}
def greatest_letter(s)
  upper = {}
  lower = {}

  s.each_char do |c|
    if c.match?(/[[:upper:]]/)
      upper[c] = upper.fetch(c, 0) + 1
    else
      lower[c] = lower.fetch(c, 0) + 1
    end
  end

  'ZYXWVUTSRQPONMLKJIHGFEDCBA'.each_char do |c|
    return c if upper.fetch(c, 0).positive? && lower.fetch(c.downcase, 0).positive?
  end

  ''
end
