# frozen_string_literal: true

# https://leetcode.com/problems/count-asterisks/
# @param {String} s
# @return {Integer}
def count_asterisks(s)
  count = 0
  result = 0
  s.each_char do |c|
    count += 1 if c == '|'
    count = 0 if count == 2
    result += 1 if count.zero? && c == '*'
  end

  result
end
