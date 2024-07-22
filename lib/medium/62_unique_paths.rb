# frozen_string_literal: true

# https://leetcode.com/problems/unique-paths/
# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
  find_paths({}, m, n)
end

private

# @param {Hash} map
# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def find_paths(map, m, n)
  return [m, n].min if m < 2 || n < 2

  cell = "#{m},#{n}"

  return map[cell] if map.key?(cell)

  l = find_paths(map, m, n - 1)
  r = find_paths(map, m - 1, n)

  map[cell] = l + r

  l + r
end
