# frozen_string_literal: true

# https://leetcode.com/problems/remove-covered-intervals/
# @param {Integer[][]} intervals
# @return {Integer}
def remove_covered_intervals(intervals)
  intervals.sort! { |a, b| a[0] == b[0] ? b[1] <=> a[1] : a[0] <=> b[0] }

  result = 0
  curr = 0
  intervals.each do |interval|
    next unless curr < interval[1]

    curr = interval[1]

    result += 1
  end

  result
end
