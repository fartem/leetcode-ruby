# frozen_string_literal: true

# https://leetcode.com/problems/count-and-say/
# @param {Integer} n
# @return {String}
def count_and_say(n)
  return '1' if n == 1

  str = count_and_say(n - 1)
  result = []
  count = 1
  i = 1
  while i < str.length
    if str[i] == str[i - 1]
      count += 1
    else
      result << (count + 48).chr
      result << str[i - 1]

      count = 1
    end

    i += 1
  end

  result << (count + 48).chr
  result << str[i - 1]

  result.join
end
