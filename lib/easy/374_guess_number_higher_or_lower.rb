# frozen_string_literal: true

# https://leetcode.com/problems/guess-number-higher-or-lower/
# @param {Integer} n
# @return {Integer}
def guess_number(n)
  left = 1
  right = n
  while left < right
    middle = left + (right - left) / 2
    guess = guess(middle)

    case guess
    when -1
      right = middle
    when 1
      left = middle + 1
    else
      left = middle
      break
    end
  end

  left
end

$guess_num = -1

# @param {Integer} n
# @return {Integer}
def guess(n)
  return -1 if $guess_num < n

  return 1 if $guess_num > n

  0
end
