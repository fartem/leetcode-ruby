# frozen_string_literal: true

# https://leetcode.com/problems/intervals-between-identical-elements/
# @param {Integer[]} arr
# @return {Integer[]}
def get_distances(arr)
  groups = ::Hash.new { |h, k| h[k] = [] }
  arr.each_with_index { |num, idx| groups[num] << idx }
  answer = ::Array.new(arr.size, 0)

  groups.each_value do |indices|
    n = indices.size

    next if n == 1

    prefix = [0]
    sum = 0

    indices.each do |x|
      sum += x
      prefix << sum
    end

    (0...n).each do |i|
      current = indices[i]
      left = current * i - prefix[i]
      right = (prefix[n] - prefix[i + 1]) - current * (n - i - 1)
      answer[current] = left + right
    end
  end

  answer
end
