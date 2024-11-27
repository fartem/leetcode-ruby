# frozen_string_literal: true

# https://leetcode.com/problems/sort-characters-by-frequency/
# @param {String} s
# @return {String}
def frequency_sort451(s)
  arr = s.split('').sort
  h = ::Hash.new { |v, k| v[k] = '' }
  p1 = 0
  p2 = 0

  while p1 < arr.size || p2 < arr.size
    if arr[p1] == arr[p2]
      p2 += 1
    else
      size = p2 - p1
      h[size] += arr[p1...p2].join
      p1 = p2
    end
  end

  result = ''
  h.keys.sort.reverse.each { |key| result += h[key] }

  result
end
