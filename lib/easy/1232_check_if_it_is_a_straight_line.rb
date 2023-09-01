# frozen_string_literal: true

# https://leetcode.com/problems/check-if-it-is-a-straight-line/
# @param {Integer[][]} coordinates
# @return {Boolean}
def check_straight_line(coordinates)
  f = coordinates[0]
  s = coordinates[1]

  i = 2
  while i <= coordinates.length - 1
    n = coordinates[i]

    return false unless (n[1] - f[1]) * (s[0] - f[0]) == (n[0] - f[0]) * (s[1] - f[1])

    i += 1
  end

  true
end
