# frozen_string_literal: true

# https://leetcode.com/problems/my-calendar-i/
class MyCalendar
  # Init
  def initialize
    @calendar = []
  end

  # @param {Integer} start_time
  # @param {Integer} end_time
  # @return {Boolean}
  def book(start_time, end_time)
    @calendar.each { |iv| return false if iv[0] < end_time && iv[1] > start_time }

    @calendar << [start_time, end_time]

    true
  end
end
