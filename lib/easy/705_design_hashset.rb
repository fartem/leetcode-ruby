# frozen_string_literal: true

# https://leetcode.com/problems/design-hashset/
class MyHashSet
  # Init
  def initialize
    @table = {}
  end

  # @param {Integer} key
  def add(key)
    @table[key] = nil
  end

  # @param {Integer} key
  def remove(key)
    @table.delete(key)
  end

  # @param {Integer} key
  # @return {Boolean}
  def contains(key)
    @table.include?(key)
  end
end
