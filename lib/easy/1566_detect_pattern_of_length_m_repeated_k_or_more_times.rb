# frozen_string_literal: true

# https://leetcode.com/problems/detect-pattern-of-length-m-repeated-k-or-more-times/
# @param {Integer[]} arr
# @param {Integer} m
# @param {Integer} k
# @return {Boolean}
def contains_pattern(arr, m, k)
  return false if arr.length / m < k

  (0...(arr.length - m)).each do |i|
    pattern = ::Array.new(m)
    j = i
    l = 0
    while l < m
      pattern[l] = arr[j]

      j += 1
      l += 1
    end

    count = 1
    j = i + m
    while j <= arr.length - m
      len = 0
      l = j
      p = 0

      while p < m
        break if pattern[p] != arr[l]

        l += 1
        p += 1
        len += 1
      end

      break unless len >= m && (len % m).zero?

      count += len / m
      j += m
    end

    return true if count == k
  end

  false
end
