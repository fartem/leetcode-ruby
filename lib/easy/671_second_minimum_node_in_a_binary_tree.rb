# frozen_string_literal: true

$r_max = 1 << (1 << 16)
$f_min = 0
$s_min = $max

# https://leetcode.com/problems/second-minimum-node-in-a-binary-tree/
# @param {TreeNode} root
# @return {Integer}
def find_second_minimum_value(root)
  $f_min = root.val
  $s_min = $r_max
  find_second_minimum(root)

  $s_min < $r_max ? $s_min : -1
end

# @param {TreNode} node
def find_second_minimum(node)
  return if node.nil?

  if $f_min < node.val && node.val < $s_min
    $s_min = node.val
  elsif $f_min == node.val
    find_second_minimum(node.left)
    find_second_minimum(node.right)
  end
end
