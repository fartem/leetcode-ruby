# frozen_string_literal: true

# https://leetcode.com/problems/smallest-string-starting-from-leaf/
# @param {TreeNode} root
# @return {String}
def smallest_from_leaf(root)
  @result = '~'
  find_smallest_string_staring_from_leaf(root, '')

  @result
end

private

# @param {TreeNode} root
# @param {String} curr
# @return {Void}
def find_smallest_string_staring_from_leaf(root, curr)
  return unless root

  c = (root.val + 97).chr
  new_curr = c + curr

  if !root.left && !root.right
    @result = new_curr if @result > new_curr
  else
    find_smallest_string_staring_from_leaf(root.left, new_curr)
    find_smallest_string_staring_from_leaf(root.right, new_curr)
  end
end
