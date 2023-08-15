# frozen_string_literal: true

# https://leetcode.com/problems/rotate-string/
# @param {String} s
# @param {String} goal
# @return {Boolean}
def rotate_string(s, goal)
  s.length == goal.length && (s + s).include?(goal)
end
