# frozen_string_literal: true

# https://leetcode.com/problems/reverse-only-letters/
# @param {String} s
# @return {String}
def reverse_only_letters(s)
  chars = s.split('')
  l = 0
  r = chars.length - 1
  while l < r
    l_c = chars[l]
    unless l_c =~ /[A-Za-z]/
      l += 1

      next
    end

    r_c = chars[r]
    unless r_c =~ /[A-Za-z]/
      r -= 1

      next
    end

    chars[l] = r_c
    chars[r] = l_c

    l += 1
    r -= 1
  end

  chars.join
end
