# frozen_string_literal: true

# https://leetcode.com/problems/check-completeness-of-a-binary-tree/
# @param {TreeNode} root
# @return {Boolean}
def is_complete_tree(root)
  is_end = false
  queue = [root]

  until queue.empty?
    curr = queue.shift

    if curr
      return false if is_end

      queue << curr.left
      queue << curr.right
    else
      is_end = true
    end
  end

  true
end
