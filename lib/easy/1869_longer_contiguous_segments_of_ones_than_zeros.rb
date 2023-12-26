# frozen_string_literal: true

# https://leetcode.com/problems/longer-contiguous-segments-of-ones-than-zeros/
# @param {String} s
# @return {Boolean}
def check_zero_ones(s)
  ones = 0
  zeros = 0
  ones_temp = 0
  zeros_temp = 0
  (0...s.length).each do |i|
    if s[i] == '1'
      if zeros_temp != 0
        zeros = zeros_temp if zeros_temp > zeros

        zeros_temp = 0
      end

      ones_temp += 1
    else
      if ones_temp != 0
        ones = ones_temp if ones_temp > ones

        ones_temp = 0
      end

      zeros_temp += 1
    end
  end

  [ones, ones_temp].max > [zeros, zeros_temp].max
end
