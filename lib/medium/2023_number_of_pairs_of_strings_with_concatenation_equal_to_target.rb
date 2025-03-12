# frozen_string_literal: true

# https://leetcode.com/problems/number-of-pairs-of-strings-with-concatenation-equal-to-target/
# @param {String[]} nums
# @param {String} target
# @return {Integer}
def num_of_pairs(nums, target)
  count = 0
  freq = ::Hash.new(0)

  nums.each { |num| freq[num] += 1 }

  nums.each do |s|
    next unless target.start_with?(s)

    remaining = target[s.size..]

    next unless freq.key?(remaining)

    count += freq[remaining]
    count -= 1 if s == remaining
  end

  count
end
