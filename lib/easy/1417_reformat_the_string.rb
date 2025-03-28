# frozen_string_literal: true

# https://leetcode.com/problems/reformat-the-string/
# @param {String} s
# @return {String}
def reformat(s)
  letters = []
  digits = []
  s.each_char do |c|
    if c =~ /[A-Za-z]/
      letters << c
    else
      digits << c
    end
  end

  diff = letters.length - digits.length
  if diff == -1 || diff.zero? || diff == 1
    min = letters.length < digits.length ? letters : digits
    max = min == letters ? digits : letters
    result = []
    min_p = 0
    max_p = 0

    while max_p < max.length && min_p < min.length
      result << max[max_p]
      result << min[min_p]

      min_p += 1
      max_p += 1
    end

    result << max[max_p] unless diff.zero?

    return result.join
  end

  ''
end
