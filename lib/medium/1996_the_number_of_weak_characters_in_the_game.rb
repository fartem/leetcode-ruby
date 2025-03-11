# frozen_string_literal: true

# https://leetcode.com/problems/the-number-of-weak-characters-in-the-game/
# @param {Integer[][]} properties
# @return {Integer}
def number_of_weak_characters(properties)
  properties.sort_by! { |a| [a[0], -a[1]] }

  result = 0
  n = properties.length
  max = properties[-1][1]

  (n - 2).downto(0) do |i|
    curr = properties[i][1]

    if curr < max
      result += 1
    else
      max = curr
    end
  end

  result
end
