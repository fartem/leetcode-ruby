# frozen_string_literal: true

# https://leetcode.com/problems/count-largest-group/
# @param {Integer} n
# @return {Integer}
def count_largest_group(n)
  sums = ::Array.new(n, 0)
  (1..n).each { |i| sums[sum_of_digits(i) - 1] += 1 }

  max = 0
  count = 0

  sums.each do |sum|
    if sum > max
      max = sum
      count = 1
    elsif sum == max
      count += 1
    end
  end

  count
end

# @param {Integer}
# @return {Integer}
def sum_of_digits(n)
  sum = 0
  while n.positive?
    sum += n % 10
    n /= 10
  end

  sum
end
