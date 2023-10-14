# frozen_string_literal: true

# https://leetcode.com/problems/thousand-separator/
# @param {Integer} n
# @return {String}
def thousand_separator(n)
  num = n.to_s
  l = num.length
  p = (l % 3).zero? ? 3 : l % 3
  result = []
  (0...l).each do |i|
    result << num[i]
    p -= 1

    if p.zero? && i != l - 1
      p = 3
      result << '.'
    end
  end

  result.join
end
