# frozen_string_literal: true

# https://leetcode.com/problems/number-of-students-doing-homework-at-a-given-time/
# @param {Integer[]} start_time
# @param {Integer[]} end_time
# @param {Integer} query_time
# @return {Integer}
def busy_student(start_time, end_time, query_time)
  result = 0
  (0...start_time.length).each do |i|
    result += 1 if start_time[i] <= query_time && end_time[i] >= query_time
  end

  result
end
