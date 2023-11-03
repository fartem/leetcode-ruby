# frozen_string_literal: true

# https://leetcode.com/problems/defuse-the-bomb/
# @param {Integer[]} code
# @param {Integer} k
# @return {Integer[]}
def decrypt(code, k)
  result = ::Array.new(code.length, 0)

  return result if k.zero?

  positive = k.positive?
  limit = positive ? k : -k
  break_value = positive ? code.length : -1
  next_index = positive ? 0 : code.length - 1

  (0...code.length).each do |i|
    count = 0
    j = positive ? i + 1 : i - 1
    sum = 0

    until count == limit
      j = next_index if j == break_value

      index = j
      if positive
        j += 1
      else
        j -= 1
      end

      sum += code[index]
      count += 1
    end

    result[i] = sum
  end

  result
end
