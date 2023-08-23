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
    unless is_letter_rol?(l_c)
      l += 1
      next
    end

    r_c = chars[r]
    unless is_letter_rol?(r_c)
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

# @param {String} s
# @return {Boolean}
def is_letter_rol?(s)
  s =~ /[A-Za-z]/
end
