# frozen_string_literal: true

# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
  return true if p.nil? && q.nil?
  return false if p.nil? || q.nil?

  curr_eq = p.val == q.val
  left_eq = is_same_tree(p.left, q.left)
  right_eq = is_same_tree(p.right, q.right)
  curr_eq && left_eq && right_eq
end
