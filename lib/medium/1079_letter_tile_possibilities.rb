# frozen_string_literal: true

# https://leetcode.com/problems/letter-tile-possibilities/
# @param {String} tiles
# @return {Integer}
def num_tile_possibilities(tiles)
  @count = 0

  chars = tiles.chars.sort
  backtrack(chars, ::Array.new(chars.size, false))

  @count - 1
end

private

# @param {String[]} chars
# @param {Boolean[]} used
# @return {Void}
def backtrack(chars, used)
  @count += 1

  chars.each_with_index do |char, i|
    next if used[i] || (i.positive? && char == chars[i - 1] && !used[i - 1])

    used[i] = true
    backtrack(chars, used)
    used[i] = false
  end
end
