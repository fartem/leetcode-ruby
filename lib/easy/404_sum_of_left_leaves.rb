# frozen_string_literal: true

# https://leetcode.com/problems/sum-of-left-leaves/
# @param {TreeNode} root
# @return {Integer}
def sum_of_left_leaves(root)
  sum = 0
  unless root.nil?
    left = root.left
    unless left.nil?
      sum +=
        if left.left.nil? && left.right.nil?
          left.val
        else
          sum_of_left_leaves(left)
        end
    end

    sum += sum_of_left_leaves(root.right)
  end

  sum
end
