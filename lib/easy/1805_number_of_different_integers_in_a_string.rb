# frozen_string_literal: true

# https://leetcode.com/problems/number-of-different-integers-in-a-string/
# @param {String} word
# @return {Integer}
def num_different_integers(word)
  uniq = ::Set.new
  p = 0
  while p < word.length
    c = word[p]

    unless c =~ /\d/
      p += 1

      next
    end

    leading_zero = c == '0'
    num = []
    while c =~ /\d/
      if !leading_zero
        num << c
      elsif c != '0'
        leading_zero = false
        num << c
      end

      p += 1

      break if p == word.length

      c = word[p]
    end

    uniq << num.join
    p += 1
  end

  uniq.length
end
