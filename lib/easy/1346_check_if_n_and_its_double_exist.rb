# frozen_string_literal: true

# https://leetcode.com/problems/check-if-n-and-its-double-exist/
# @param {Integer[]} arr
# @return {Boolean}
def check_if_exist(arr)
  nums = ::Set.new
  arr.each do |num|
    return true if nums.include?(num * 2) || (num.even? && nums.include?(num / 2))

    nums << num
  end

  false
end
