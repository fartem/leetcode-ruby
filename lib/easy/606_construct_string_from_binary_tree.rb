# frozen_string_literal: true

# https://leetcode.com/problems/construct-string-from-binary-tree/
# @param {TreeNode} root
# @return {String}
def tree2str(root)
  result = [root.val]
  apply(root, result)

  result.join
end

# @param {TreeNode} node
# @param {String[]} str
def apply(node, str)
  return if node.nil?

  unless node.left.nil?
    str << '('
    str << node.left.val
    apply(node.left, str)
    str << ')'
  end

  return if node.right.nil?

  str << '()' if node.left.nil?
  str << '('
  str << node.right.val
  apply(node.right, str)
  str << ')'
end
