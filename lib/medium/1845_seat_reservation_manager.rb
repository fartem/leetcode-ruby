# frozen_string_literal: true

# https://leetcode.com/problems/seat-reservation-manager/
class SeatManager
  # @param {Integer} n
  def initialize(n)
    @heap = (1..n).to_a
  end

  # @return {Integer}
  def reserve
    min = @heap[0]
    last = @heap.pop

    unless @heap.empty?
      @heap[0] = last
      heapify_down(0)
    end

    min
  end

  # @param {Integer} seat_number
  # @return {Void}
  def unreserve(seat_number)
    @heap << seat_number
    heapify_up(@heap.size - 1)
  end

  private

  # @param {Integer} index
  # @return {Void}
  def heapify_down(index)
    smallest = index
    left = 2 * index + 1
    right = 2 * index + 2

    smallest = left if left < @heap.size && @heap[left] < @heap[smallest]

    smallest = right if right < @heap.size && @heap[right] < @heap[smallest]

    return unless smallest != index

    @heap[index], @heap[smallest] = @heap[smallest], @heap[index]
    heapify_down(smallest)
  end

  # @param {Integer} index
  # @return {Void}
  def heapify_up(index)
    return if index.zero?

    parent = (index - 1) / 2

    return unless @heap[index] < @heap[parent]

    @heap[index], @heap[parent] = @heap[parent], @heap[index]
    heapify_up(parent)
  end
end
