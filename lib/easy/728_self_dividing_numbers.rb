# frozen_string_literal: true

# https://leetcode.com/problems/self-dividing-numbers/
# @param {Integer} left
# @param {Integer} right
# @return {Integer[]}
def self_dividing_numbers(left, right)
  result = []
  (left..right).each do |num|
    cpy = num
    is_self_dividing = true
    until cpy.zero?
      candidate = cpy % 10
      if candidate.zero?
        is_self_dividing = false

        break
      end

      rem = num % candidate
      unless rem.zero?
        is_self_dividing = false

        break
      end

      cpy /= 10
    end

    result << num if is_self_dividing
  end

  result
end
