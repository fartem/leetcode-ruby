# frozen_string_literal: true

# https://leetcode.com/problems/insert-delete-getrandom-o1/
class RandomizedSet
  # Init
  def initialize
    @table = {}
    @values = []
  end

  # @param {Integer} val
  # @return {Boolean}
  def insert(val)
    return false if @table[val]

    @table[val] = @values.size
    @values << val

    true
  end

  # @param {Integer} val
  # @return {Boolean}
  def remove(val)
    return false unless @table[val]

    last_val = @values.pop
    unless val == last_val
      @table[last_val] = @table[val]
      @values[@table[val]] = last_val
    end

    @table.delete(val)

    true
  end

  # @rerturn {Integer}
  def get_random = @values[rand(@values.size)]
end
