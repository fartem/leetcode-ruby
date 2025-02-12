# frozen_string_literal: true

# https://leetcode.com/problems/time-needed-to-inform-all-employees/
# @param {Integer} n
# @param {Integer} head_id
# @param {Integer[]} manager
# @param {Integer[]} inform_time
# @return {Integer}
def num_of_minutes(n, head_id, manager, inform_time)
  @res = 0

  (0...n).each { |i| process_for_min_of_minutes(i, head_id, manager, inform_time) if (inform_time[i]).zero? }

  @res
end

private

# @param {Integer} curr
# @param {Integer} head
# @param {Integer[]} manager
# @param {Integer[]} inform_time
# @return {Void}
def process_for_min_of_minutes(cur, head, manager, inform_time)
  sum = 0

  until cur == head
    cur = manager[cur]
    sum += inform_time[cur]
  end

  @res = [@res, sum].max
end
