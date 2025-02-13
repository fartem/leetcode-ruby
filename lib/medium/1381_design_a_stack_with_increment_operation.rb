# frozen_string_literal: true

# https://leetcode.com/problems/design-a-stack-with-increment-operation/
class CustomStack
  # @param {Integer} max_size
  def initialize(max_size)
    @stack = ::Array.new(max_size, 0)
    @max_size = max_size
    @size = 0
  end

  # @param {Integer} x
  # @return {Void}
  def push(x)
    return unless @size < @max_size

    @stack[@size] = x
    @size += 1
  end

  # @return {Integer}
  def pop
    return -1 unless @size.positive?

    @size -= 1
    @stack[@size]
  end

  # @param {Integer} k
  # @param {Integer} val
  # @return {Void}
  def increment(k, val)
    if @size < k
      (0...@size).each { |i| @stack[i] += val }
    else
      p = 0

      while k.positive?
        @stack[p] += val
        p += 1
        k -= 1
      end
    end
  end
end
