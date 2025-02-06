# frozen_string_literal: true

# https://leetcode.com/problems/sum-of-nodes-with-even-valued-grandparent/
# @param {TreeNode} root
# @return {Integer}
def sum_even_grandparent(root)
  @sum = 0
  sum_for_even_grandparent(root, nil, nil)

  @sum
end

private

# @param {TreeNode} curr
# @param {TreeNode} parent
# @param {TreeNode} grandparent
# @return {Void}
def sum_for_even_grandparent(curr, parent, grandparent)
  return unless curr

  @sum += curr.val if grandparent&.val&.even?

  sum_for_even_grandparent(curr.left, curr, parent)
  sum_for_even_grandparent(curr.right, curr, parent)
end
