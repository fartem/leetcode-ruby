# frozen_string_literal: true

# https://leetcode.com/problems/all-elements-in-two-binary-search-trees/
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Integer[]}
def get_all_elements(root1, root2)
  first = []
  traverse_for_get_all_elements(root1, first)

  second = []
  traverse_for_get_all_elements(root2, second)

  merge_for_get_all_elements(first, second)
end

private

# @param {TreeNode} node
# @param {Integer[]} values
# @return {Integer[]}
def traverse_for_get_all_elements(node, values)
  return unless node

  traverse_for_get_all_elements(node.left, values)
  values << node.val
  traverse_for_get_all_elements(node.right, values)
end

# @param {Integer[]} first
# @param {Integer[]} second
# @return {Integer[]}
def merge_for_get_all_elements(first, second)
  result = []

  i = 0
  j = 0

  while i < first.size || j < second.size
    if i >= first.size
      result.concat(second[j..])

      break
    elsif j >= second.size
      result.concat(first[i..])

      break
    end

    a = first[i]
    b = second[j]

    if a < b
      result << a

      i += 1
    else
      result << b

      j += 1
    end
  end

  result
end
