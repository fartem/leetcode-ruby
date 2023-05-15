# frozen_string_literal: true

# @param {TreeNode} root
# @return {TreeNode}
def invert_tree(root)
  return if root.nil?

  temp = root.right
  root.right = root.left
  root.left = temp
  invert_tree(root.left)
  invert_tree(root.right)

  root
end
