# frozen_string_literal: true

# https://leetcode.com/problems/reverse-vowels-of-a-string/
# @param {String} s
# @return {String}
def reverse_vowels(s)
  vowels = ::Set.new(%w[a A e E i I o O u U])
  letters = s.split('')
  left = 0
  right = letters.length - 1
  while left < right
    l = letters[left]
    unless vowels.include?(l)
      left += 1
      next
    end

    r = letters[right]
    unless vowels.include?(r)
      right -= 1
      next
    end

    letters[left] = r
    letters[right] = l
    left += 1
    right -= 1
  end

  letters.join
end
