# frozen_string_literal: true

# https://leetcode.com/problems/count-of-matches-in-tournament/
# @param {Integer} n
# @return {Integer}
def number_of_matches(n)
  result = 0
  while n > 1
    result += n / 2
    n = (n - 1) / 2 + 1
  end

  result
end
