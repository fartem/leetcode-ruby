# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return 0 if nums.empty?

  result = 0
  (1..nums.length).step(1) do |i|
    nums[result += 1] = nums[i] unless nums[i] == nums[result]
  end
  result
end
