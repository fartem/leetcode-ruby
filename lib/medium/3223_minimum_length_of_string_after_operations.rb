# frozen_string_literal: true

# https://leetcode.com/problems/minimum-length-of-string-after-operations/
# @param {String} s
# @return {Integer}
def minimum_length(s)
  count = ::Hash.new(0)
  minus = 0

  s.each_char { |c| count[c] += 1 }

  count.each_value do |freq|
    while freq >= 3
      minus += 2
      freq -= 2
    end
  end

  s.size - minus
end
