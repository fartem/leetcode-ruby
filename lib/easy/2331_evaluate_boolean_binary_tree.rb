# frozen_string_literal: true

# https://leetcode.com/problems/evaluate-boolean-binary-tree/
# @param {TreeNode} root
# @return {Boolean}
def evaluate_tree(root)
  case root.val
  when 0
    false
  when 1
    true
  when 2
    evaluate_tree(root.left) || evaluate_tree(root.right)
  else
    evaluate_tree(root.left) && evaluate_tree(root.right)
  end
end
