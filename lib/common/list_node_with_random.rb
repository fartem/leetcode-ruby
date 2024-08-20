# frozen_string_literal: true

# ListNodeWithRandom implementation for this project
class ListNodeWithRandom
  attr_accessor :val, :next, :random

  # @param {Integer} val
  # @param {ListNodeWithRandom} nxt
  # @param {ListNodeWithRandom} random
  def initialize(val, nxt = nil, random = nil)
    @val = val
    @next = nxt
    @random = random
  end

  # @param {ListNodeWithRandom} l1
  # @param {ListNodeWithRandom} l2
  # @return {Boolean}
  def self.are_equal(l1, l2)
    while l1 && l2
      return false if l1.random && l2.random && l1.random.val != l2.random.val

      return false if l1.val != l2.val

      l1 = l1.next
      l2 = l2.next
    end

    l1.nil? && l2.nil?
  end
end
