# frozen_string_literal: true

# https://leetcode.com/problems/reverse-prefix-of-word/
# @param {String} word
# @param {Character} ch
# @return {String}
def reverse_prefix(word, ch)
  target = word.index(ch)

  return word if target.nil?

  result = word.chars
  start = 0
  while start < target
    f = result[start]
    s = result[target]
    result[start] = s
    result[target] = f

    start += 1
    target -= 1
  end

  result.join
end
