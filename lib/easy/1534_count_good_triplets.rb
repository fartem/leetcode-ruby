# frozen_string_literal: true

# https://leetcode.com/problems/count-good-triplets/
# @param {Integer[]} arr
# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @return {Integer}
def count_good_triplets(arr, a, b, c)
  result = 0
  (0...arr.length).each do |i|
    f = arr[i]
    ((i + 1)...arr.length).each do |j|
      s = arr[j]

      next unless (f - s).abs <= a

      ((j + 1)...arr.length).each do |k|
        t = arr[k]

        result += 1 if (s - t).abs <= b && (f - t).abs <= c
      end
    end
  end

  result
end
