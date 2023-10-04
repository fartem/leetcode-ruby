# frozen_string_literal: true

# https://leetcode.com/problems/path-crossing/
# @param {String} path
# @return {Boolean}
def is_path_crossing(path)
  steps = {
    'N' => [0, 1],
    'S' => [0, -1],
    'E' => [1, 0],
    'W' => [-1, 0]
  }
  points = { '0,0' => true }
  x = 0
  y = 0
  (0...path.length).each do |i|
    move = path[i]
    directions = steps[move]
    x += directions.first
    y += directions.last
    key = "#{x},#{y}"

    return true if points[key]

    points[key] = true
  end

  false
end
