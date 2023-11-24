# frozen_string_literal: true

# https://leetcode.com/problems/latest-time-by-replacing-hidden-digits/
# @param {String} time
# @return {String}
def maximum_time(time)
  result = []
  f_hour = time[0]
  s_hour = time[1]

  result << if f_hour == '?'
              (s_hour == '?' || s_hour.ord < 52 ? '2' : '1')
            else
              f_hour
            end

  result << if s_hour == '?'
              (result.first == '2' ? '3' : '9')
            else
              s_hour
            end

  result << ':'

  f_minute = time[3]
  result << (f_minute == '?' ? '5' : f_minute)

  s_minute = time[4]
  result << (s_minute == '?' ? '9' : s_minute)

  result.join
end
