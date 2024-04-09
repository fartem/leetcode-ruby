# frozen_string_literal: true

# https://leetcode.com/problems/largest-3-same-digit-number-in-string/
# @param {String} num
# @return {String}
def largest_good_integer(num)
  result = ''
  prev = num[0]
  candidate = [prev]
  p = 1
  (1...num.length).each do |i|
    curr = num[i]

    p = 0 unless prev == curr
    candidate[p] = curr
    p += 1

    prev = curr

    next unless p == 3

    result = [result, candidate.join].max
    p = 0
  end

  result
end
