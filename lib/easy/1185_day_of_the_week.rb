# frozen_string_literal: true

$days_of_week = %w[Sunday Monday Tuesday Wednesday Thursday Friday Saturday]
$days_in_month = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

# https://leetcode.com/problems/day-of-the-week/
# @param {Integer} day
# @param {Integer} month
# @param {Integer} year
# @return {String}
def day_of_the_week(day, month, year)
  (1971...year).each { |i| day += is_leap?(i) ? 366 : 365 }

  day += 1 if month > 2 && is_leap?(year)

  (1...month).each { |i| day += $days_in_month[i] }

  $days_of_week[(day + 4) % 7]
end

# @param {Integer} year
# @return {Boolean}
def is_leap?(year)
  ((year % 4).zero? && (year % 100).positive?) || (year % 400).zero?
end
