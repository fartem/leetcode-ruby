# frozen_string_literal: true

# https://leetcode.com/problems/number-of-days-between-two-dates/
# @param {String} date1
# @param {String} date2
# @return {Integer}
def days_between_dates(date1, date2)
  (days(date1) - days(date2)).abs
end

# @param {String} date
# @return {Integer}
def days(date)
  y = date[0...4].to_i
  m = date[5...7].to_i
  d = date[8...10].to_i
  months = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  result = 0
  (1971...y).each { |i| result += is_leap(i) ? 366 : 365 }

  result += 1 if is_leap(y) && m > 2

  (1...m).each { |i| result += months[i] }

  result + d
end

# @param {Integer} year
# @return {Boolean}
def is_leap(year)
  ((year % 4).zero? && (year % 100).positive?) || (year % 400).zero?
end
