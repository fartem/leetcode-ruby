# frozen_string_literal: true

$days = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

# https://leetcode.com/problems/day-of-the-year/
# @param {String} date
# @return {Integer}
def day_of_year(date)
  y = date[0..4].to_i
  m = date[5..7].to_i
  d = date[8..10].to_i
  day = 0
  day += 1 if m > 2 && (((y % 4).zero? && (y % 100).positive?) || (y % 400).zero?)
  (1..(m - 1)).each { |i| day += $days[i] }

  day + d
end
