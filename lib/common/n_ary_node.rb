# frozen_string_literal: true

# N-ary Tree implementation for this project
class NAryNode
  attr_accessor :val, :children

  # @param {Integer} val
  def initialize(val, children = nil)
    @val = val
    @children = children
  end
end
