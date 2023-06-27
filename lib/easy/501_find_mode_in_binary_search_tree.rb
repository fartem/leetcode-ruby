# frozen_string_literal: true

# https://leetcode.com/problems/find-mode-in-binary-search-tree/
# @param {TreeNode} root
# @return {Integer[]}
def find_mode(root)
  $prev = -1
  $count = 1
  $max = 0

  result = []
  traverse(root, result)

  result
end

$prev = -1
$count = 1
$max = 0

# @param {TreeNode} node
# @param {Integer[]} modes
def traverse(node, modes)
  return if node.nil?

  traverse(node.left, modes)
  if $prev != -1
    if $prev == node.val
      $count += 1
    else
      $count = 1
    end
  end
  if $count > $max
    $max = $count
    modes.clear
    modes << node.val
  elsif $count == $max
    modes << node.val
  end
  $prev = node.val
  traverse(node.right, modes)
end
