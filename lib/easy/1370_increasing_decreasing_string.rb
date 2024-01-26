# frozen_string_literal: true

# https://leetcode.com/problems/increasing-decreasing-string/
# @param {String} s
# @return {String}
def sort_string(s)
  freq = ::Array.new(128, 0)
  max = 0
  s.each_byte do |b|
    freq[b] += 1
    count = freq[b]

    max = count if count > max
  end

  result = []
  p = 0
  while max.positive?
    (0...freq.length).each do |i|
      next unless freq[i].positive?

      p += 1
      result[p] = i.chr
      freq[i] -= 1
    end

    (0...freq.length).reverse_each do |i|
      next unless freq[i].positive?

      p += 1
      result[p] = i.chr
      freq[i] -= 1
    end

    max -= 1
  end

  result.join
end
