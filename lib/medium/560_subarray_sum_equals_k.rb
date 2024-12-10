# frozen_string_literal: true

# https://leetcode.com/problems/subarray-sum-equals-k/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def subarray_sum(nums, k)
  result = 0
  pre = 0
  values = {}
  values[0] = 1

  nums.each do |num|
    pre += num
    result += values.fetch(pre - k, 0)
    values[pre] = values.fetch(pre, 0) + 1
  end

  result
end

# int result = 0;
# int pre = 0;
# Map<Integer, Integer> values = new HashMap<>();
# values.put(0, 1);
# for (int num : nums) {
#     pre += num;
#     result += values.getOrDefault(pre - k, 0);
#     values.put(pre, values.getOrDefault(pre, 0) + 1);
# }
# return result;
