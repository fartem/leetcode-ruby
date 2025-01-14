# frozen_string_literal: true

# https://leetcode.com/problems/find-the-prefix-common-array-of-two-arrays/
# @param {Integer[]} a
# @param {Integer[]} b
# @return {Integer[]}
def find_the_prefix_common_array(a, b)
  n = a.size
  freq = ::Array.new(n + 1, 0)
  result = ::Array.new(n, 0)
  common = 0

  (0...n).each do |i|
    freq[a[i]] += 1
    common += 1 if freq[a[i]] == 2

    freq[b[i]] += 1
    common += 1 if freq[b[i]] == 2

    result[i] = common
  end

  result
end
