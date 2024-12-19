# frozen_string_literal: true

# https://leetcode.com/problems/split-array-into-consecutive-subsequences/
# @param {Integer[]} nums
# @return {Boolean}
def is_possible(nums)
  count = ::Hash.new(0)
  nums.each { |num| count[num] += 1 }
  tail = ::Hash.new(0)

  nums.each do |num|
    next if count[num].zero?

    count[num] -= 1

    if tail[num - 1].positive?
      tail[num] += 1
      tail[num - 1] -= 1
    elsif count[num + 1].positive? && count[num + 2].positive?
      count[num + 1] -= 1
      count[num + 2] -= 1
      tail[num + 2] += 1
    else
      return false
    end
  end

  true
end

# count = Hash.new { 0 }
# nums.each { |num| count[num] += 1 }
# tail = Hash.new { 0 }

# nums.each do |num|
#     next if count[num] == 0

#     count[num] -= 1

#     if tail[num-1] > 0
#         tail[num] += 1
#         tail[num-1] -= 1
#     elsif count[num+1] > 0 && count[num+2] > 0
#         count[num+1] -= 1
#         count[num+2] -= 1
#         tail[num+2] += 1
#     else
#         return false
#     end
# end

# true
