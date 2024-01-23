# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def find_gcd(nums)
  nums.sort!

  gcd(nums.first, nums.last)
end

# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def gcd(a, b)
  return a if b.zero?

  gcd(b, a % b)
end
