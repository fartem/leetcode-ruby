# frozen_string_literal: true

# https://leetcode.com/problems/first-letter-to-appear-twice/
# @param {String} s
# @return {Character}
def repeated_character(s)
  letters = ::Array.new(128, 0)
  s.each_char do |c|
    return c if letters[c.ord] == 1

    letters[c.ord] += 1
  end

  '0'
end
