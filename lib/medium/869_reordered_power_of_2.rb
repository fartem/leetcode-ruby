# frozen_string_literal: true

# https://leetcode.com/problems/reordered-power-of-2/
# @param {Integer} n
# @return {Boolean}
def reordered_power_of2(n)
  arr = count_for_reordered_power_of2(n)
  (0...31).each do |i|
    return true if arr == count_for_reordered_power_of2(1 << i)
  end

  false
end

private

# @param {Integer} n
# @return {Integer[]}
def count_for_reordered_power_of2(n)
  result = ::Array.new(10, 0)
  while n.positive?
    result[n % 10] += 1
    n /= 10
  end

  result
end
