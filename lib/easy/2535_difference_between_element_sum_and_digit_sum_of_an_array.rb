# frozen_string_literal: true

# https://leetcode.com/problems/difference-between-element-sum-and-digit-sum-of-an-array/
# @param {Integer[]} nums
# @return {Integer}
def difference_of_sum(nums)
  sum_of_nums = 0
  sum_of_digits = 0
  nums.each do |num|
    sum_of_nums += num
    n = num

    while n.positive?
      sum_of_digits += n % 10
      n /= 10
    end
  end

  (sum_of_nums - sum_of_digits).abs
end
