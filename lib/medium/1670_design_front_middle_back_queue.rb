# frozen_string_literal: true

# https://leetcode.com/problems/design-front-middle-back-queue/
class FrontMiddleBackQueue
  # Init
  def initialize
    @list = []
  end

  # @param {Integer} val
  # @return {Void}
  def push_front(val)
    @list.unshift(val)
  end

  # @param {Integer} val
  # @return {Void}
  def push_middle(val)
    @list.insert(@list.size / 2, val)
  end

  # @param {Integer} val
  # @return {Void}
  def push_back(val)
    @list << val
  end

  # @return {Integer}
  def pop_front
    @list.empty? ? -1 : @list.shift
  end

  # @return {Integer}
  def pop_middle
    size = @list.size

    return -1 if size.zero?

    index = size.even? ? size / 2 - 1 : size / 2

    @list.delete_at(index)
  end

  # @return {Integer}
  def pop_back
    @list.empty? ? -1 : @list.pop
  end
end
