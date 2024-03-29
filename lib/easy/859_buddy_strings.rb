# frozen_string_literal: true

# https://leetcode.com/problems/buddy-strings/
# @param {String} s
# @param {String} goal
# @return {Boolean}
def buddy_strings(s, goal)
  return false if s.length != goal.length

  if s == goal
    count = ::Array.new(128, 0)
    max = 1
    s.each_byte do |b|
      count[b] += 1
      max = [max, count[b]].max
    end

    max > 1
  else
    f = -1
    n = -1
    (0...s.length).each do |i|
      next if s[i] == goal[i]

      if f == -1
        f = i
      elsif n == -1
        n = i
      else
        return false
      end
    end

    f != -1 && n != -1 && s[f] == goal[n] && s[n] == goal[f]
  end
end
