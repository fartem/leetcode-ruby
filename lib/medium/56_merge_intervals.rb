# frozen_string_literal: true

# https://leetcode.com/problems/merge-intervals/
# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge56(intervals)
  result = []
  intervals.sort_by! { |interval| interval[0] }
  intervals.each do |interval|
    if result.empty? || result[-1][1] < interval[0]
      result << interval
    else
      result[-1][1] = [result[-1][1], interval[1]].max
    end
  end

  result
end
