# frozen_string_literal: true

# https://leetcode.com/problems/button-with-longest-push-time/
# @param {Integer[][]} events
# @return {Integer}
def button_with_longest_time(events)
  max_time = events[0][1]
  result = events[0][0]

  (1...events.size).each do |i|
    press_time = events[i][1] - events[i - 1][1]

    next unless press_time > max_time || press_time == max_time && events[i][0] < result

    max_time = press_time

    result = events[i][0]
  end

  result
end
