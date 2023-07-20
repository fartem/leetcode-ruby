# frozen_string_literal: true

# https://leetcode.com/problems/average-of-levels-in-binary-tree/
# @param {TreeNode} root
# @return {Float[]}
def average_of_levels(root)
  result = []
  queue = ::Queue.new([root])

  until queue.empty?
    sum = 0.0
    size = queue.length
    count = size

    until size.zero?
      node = queue.pop
      queue << node.left unless node.left.nil?
      queue << node.right unless node.right.nil?

      sum += node.val
      size -= 1
    end

    result << sum / count
  end

  result
end
