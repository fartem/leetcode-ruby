# frozen_string_literal: true

# https://leetcode.com/problems/summary-ranges/
# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
  return [] if nums.empty?

  result = []
  start = nums.first
  eend = start
  (1...nums.length).each do |i|
    num = nums[i]
    if eend + 1 == num
      eend = num
    else
      result << if start == eend
                  start.to_s
                else
                  "#{start}->#{eend}"
                end
      start = num
      eend = start
    end
  end

  result << if start == eend
              start.to_s
            else
              "#{start}->#{eend}"
            end

  result
end
