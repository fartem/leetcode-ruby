# frozen_string_literal: true

# https://leetcode.com/problems/permutations/
# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
  result = []
  permutations(nums, [], result, [])

  result
end

private

# @param {Integer[]} nums
# @param {Integer[]} d_s
# @param {Integer[]} result
# @param {Boolean[]} freq
def permutations(nums, d_s, result, freq)
  if d_s.length == nums.length
    result << d_s.clone
  else
    (0...nums.length).each do |i|
      next if freq[i]

      freq[i] = true
      d_s << nums[i]
      permutations(nums, d_s, result, freq)
      d_s.delete_at(d_s.length - 1)
      freq[i] = false
    end
  end
end
