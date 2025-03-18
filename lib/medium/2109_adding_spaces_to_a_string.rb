# frozen_string_literal: true

# https://leetcode.com/problems/adding-spaces-to-a-string/
# @param {String} s
# @param {Integer[]} spaces
# @return {String}
def add_spaces(s, spaces)
  start = 0
  result = []

  spaces.each do |space|
    result << s[start...space]
    result << ' '
    start = space
  end

  result << s[start..]

  result.join
end
