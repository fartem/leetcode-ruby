# frozen_string_literal: true

# https://leetcode.com/problems/asteroid-collision/
# @param {Integer[]} asteroids
# @return {Integer[]}
def asteroid_collision(asteroids)
  stack = []

  asteroids.each do |asteroid|
    stack << asteroid
    stack.drop_asteroid! while stack.has_collision?
  end

  stack
end

# Array extension
class Array
  # @return {Integer}
  def drop_asteroid!
    return 2.times { pop } if self[-1].abs == self[-2].abs

    self[-1].abs > self[-2].abs ? self[-1] = pop : pop
  end

  # @return {Boolean}
  def has_collision?
    return false unless length >= 2

    self[-2] > self[-1] && self[-1].positive? != self[-2].positive?
  end
end
