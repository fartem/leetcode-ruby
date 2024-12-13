# frozen_string_literal: true

# https://leetcode.com/problems/task-scheduler/
# @param {Character[]} tasks
# @param {Integer} n
# @return {Integer}
def least_interval(tasks, n)
  count = ::Array.new(128, 0)
  max = 0
  max_count = 0

  tasks.each do |task|
    i = task.ord
    count[i] += 1
    c = count[i]

    if c == max
      max_count += 1
    elsif c > max
      max = c
      max_count = 1
    end
  end

  [tasks.size, (max - 1) * (n + 1) + max_count].max
end
