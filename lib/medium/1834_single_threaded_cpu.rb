# frozen_string_literal: true

# https://leetcode.com/problems/single-threaded-cpu/
# @param {Integer[][]} tasks
# @return {Integer[]}
def get_order(tasks)
  sorted_tasks = tasks.each_with_index.map { |t, idx| [t[0], t[1], idx] }.sort_by { |et, _, _| et }

  current_time = 0
  result = []
  i = 0
  heap = []

  while i < sorted_tasks.size || !heap.empty?
    while i < sorted_tasks.size && sorted_tasks[i][0] <= current_time
      insert_heap(heap, [sorted_tasks[i][1], sorted_tasks[i][2]])
      i += 1
    end

    if heap.empty? && i < sorted_tasks.size
      current_time = sorted_tasks[i][0]
      while i < sorted_tasks.size && sorted_tasks[i][0] <= current_time
        insert_heap(heap, [sorted_tasks[i][1], sorted_tasks[i][2]])
        i += 1
      end
    end

    next if heap.empty?

    pt, idx = extract_min(heap)
    result << idx
    current_time += pt
  end

  result
end

private

# @param {Integer[]} heap
# @param {Integer} element
# @return {Void}
def insert_heap(heap, element)
  heap << element
  index = heap.size - 1

  while index.positive?
    parent = (index - 1) / 2

    break unless compare(element, heap[parent])

    heap[index], heap[parent] = heap[parent], heap[index]
    index = parent
  end
end

# @param {Integer[]} heap
# @return {Integer}
def extract_min(heap)
  return if heap.empty?

  min = heap[0]
  last = heap.pop

  unless heap.empty?
    heap[0] = last
    index = 0
    loop do
      left = 2 * index + 1
      right = 2 * index + 2
      smallest = index

      smallest = left if left < heap.size && compare(heap[left], heap[smallest])
      smallest = right if right < heap.size && compare(heap[right], heap[smallest])

      break if smallest == index

      heap[index], heap[smallest] = heap[smallest], heap[index]
      index = smallest
    end
  end

  min
end

# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def compare(a, b) = a[0] < b[0] || (a[0] == b[0] && a[1] < b[1])
