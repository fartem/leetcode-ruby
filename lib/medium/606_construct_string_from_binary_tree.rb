# frozen_string_literal: true

# https://leetcode.com/problems/construct-string-from-binary-tree/
# @param {TreeNode} root
# @return {String}
def tree2str(root)
  result = [root.val]
  tree_to_str(root, result)

  result.join
end

private

# @param {TreeNode} node
# @param {String[]} str
def tree_to_str(node, str)
  return if node.nil?

  unless node.left.nil?
    str << '('
    str << node.left.val
    tree_to_str(node.left, str)
    str << ')'
  end

  return if node.right.nil?

  str << '()' if node.left.nil?
  str << '('
  str << node.right.val
  tree_to_str(node.right, str)
  str << ')'
end
