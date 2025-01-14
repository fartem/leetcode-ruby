# frozen_string_literal: true

# https://leetcode.com/problems/reorder-data-in-log-files/
# @param {String[]} logs
# @return {String[]}
def reorder_log_files(logs)
  partitions =
    logs.partition do |log|
      log = log.split
      !('0'..'9').include?(log[1][0])
    end

  partitions[0].sort! do |p1, p2|
    p1_split = p1.split
    p2_split = p2.split

    if p1_split[1..] == p2_split[1..]
      p1_split[0] <=> p2_split[0]
    else
      p1_split[1..] <=> p2_split[1..]
    end
  end

  partitions.flatten
end
