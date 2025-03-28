# frozen_string_literal: true

# https://leetcode.com/problems/maximum-product-after-k-increments/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def maximum_product2233(nums, k)
  mod = 10**9 + 7

  heap = ::MinHeap.new
  nums.each { |num| heap.push(num) }

  k.times do
    smallest = heap.pop
    heap.push(smallest + 1)
  end

  product = 1

  until heap.empty?
    num = heap.pop
    product = (product * num) % mod
  end

  product
end

# MinHeap
class MinHeap
  # Init
  def initialize
    @heap = []
  end

  # @param {Integer} val
  # @return {Void}
  def push(val)
    @heap << val

    heapify_up(@heap.size - 1)
  end

  # @return {Integer}
  def pop
    return if @heap.empty?

    swap(0, @heap.size - 1)
    val = @heap.pop

    heapify_down(0) unless @heap.empty?

    val
  end

  # @return {Boolean}
  def empty? = @heap.empty?

  private

  # @param {Integer} index
  # @return {Void}
  def heapify_up(index)
    parent = (index - 1) / 2

    return unless parent >= 0 && @heap[parent] > @heap[index]

    swap(parent, index)
    heapify_up(parent)
  end

  # @param {Integer} index
  # @return {Void}
  def heapify_down(index)
    left = 2 * index + 1
    right = 2 * index + 2
    smallest = index

    smallest = left if left < @heap.size && @heap[left] < @heap[smallest]
    smallest = right if right < @heap.size && @heap[right] < @heap[smallest]

    return if smallest == index

    swap(index, smallest)
    heapify_down(smallest)
  end

  # @param {Integer} i
  # @param {Integer} j
  # @return {Void}
  def swap(i, j)
    @heap[i], @heap[j] = @heap[j], @heap[i]
  end
end
