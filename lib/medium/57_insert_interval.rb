# frozen_string_literal: true

# https://leetcode.com/problems/insert-interval/
# @param {Integer[][]} intervals
# @param {Integer[]} new_interval
# @return {Integer[][]}
def insert(intervals, new_interval)
  result = []
  n = intervals.length
  p = 0

  while p < n && intervals[p][1] < new_interval[0]
    result << intervals[p]

    p += 1
  end

  while p < n && intervals[p][0] <= new_interval[1]
    new_interval[0] = [new_interval[0], intervals[p][0]].min
    new_interval[1] = [new_interval[1], intervals[p][1]].max

    p += 1
  end

  result << new_interval

  while p < n
    result << intervals[p]

    p += 1
  end

  result
end
