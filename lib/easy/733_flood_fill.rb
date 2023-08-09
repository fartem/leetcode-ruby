# frozen_string_literal: true

# https://leetcode.com/problems/flood-fill/
# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} color
# @return {Integer[][]}
def flood_fill(image, sr, sc, color)
  c = image[sr][sc]
  dfs(image, sr, sc, c, color) if c != color

  image
end

# @param {Integer[][]} image
# @param {Integer} r
# @param {Integer} c
# @param {Integer} color
# @param {Integer} new_color
def dfs(image, r, c, color, new_color)
  return if image[r][c] != color

  image[r][c] = new_color
  dfs(image, r - 1, c, color, new_color) if r >= 1
  dfs(image, r, c - 1, color, new_color) if c >= 1
  dfs(image, r + 1, c, color, new_color) if r + 1 < image.length
  dfs(image, r, c + 1, color, new_color) if c + 1 < image.first.length
end
