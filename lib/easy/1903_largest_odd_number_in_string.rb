# frozen_string_literal: true

# https://leetcode.com/problems/largest-odd-number-in-string/
# @param {String} num
# @return {String}
def largest_odd_number(num)
  (0..num.length).reverse_each do |i|
    candidate = num[i].to_i

    return num[0, i + 1] if candidate.odd?
  end

  ''
end
