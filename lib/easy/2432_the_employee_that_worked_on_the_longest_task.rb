# frozen_string_literal: true

# https://leetcode.com/problems/the-employee-that-worked-on-the-longest-task/
# @param {Integer} _
# @param {Integer[][]} logs
# @return {Integer}
def hardest_worker(_, logs)
  max = logs[0][1]
  result = logs[0][0]
  (1...logs.length).each do |i|
    time = logs[i][1] - logs[i - 1][1]

    next unless time > max || (time == max && result > logs[i][0])

    max = time
    result = logs[i][0]
  end

  result
end
