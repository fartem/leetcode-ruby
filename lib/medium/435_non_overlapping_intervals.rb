# frozen_string_literal: true

# https://leetcode.com/problems/non-overlapping-intervals/
# @param {Integer[][]} intervals
# @return {Integer}
def erase_overlap_intervals(intervals)
  intervals.sort_by!(&:first)
  max = intervals.first.last
  result = 0
  intervals.each do |inter|
    if inter.first < max
      result += 1
      max = [max, inter.last].min
    else
      max = inter.last
    end
  end

  result - 1
end
