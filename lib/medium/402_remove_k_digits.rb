# frozen_string_literal: true

# https://leetcode.com/problems/remove-k-digits/
# @param {String} num
# @param {Integer} k
# @return {String}
def remove_kdigits(num, k)
  return '0' if num.size == k

  stack = []
  i = 0
  while i < num.size
    while k.positive? && !stack.empty? && stack.last > num[i]
      stack.pop
      k -= 1
    end

    stack << num[i]
    i += 1
  end

  while k.positive?
    stack.pop
    k -= 1
  end

  result = []
  result << stack.pop until stack.empty?

  result.reverse!
  result.shift while result.size > 1 && result[0] == '0'

  result.join
end
