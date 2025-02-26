# frozen_string_literal: true

# https://leetcode.com/problems/even-odd-tree/
# @param {TreeNode} root
# @return {Boolean}
def is_even_odd_tree(root)
  nodes = [root]
  level = 0

  until nodes.empty?
    size = nodes.size
    prev = -1

    (0...size).each do |_i|
      node = nodes.shift
      val = node.val

      if level.even?
        return false if val.even? || (prev != -1 && prev >= val)
      elsif val.odd? || (prev != -1 && prev <= val)
        return false
      end

      nodes << node.left if node.left
      nodes << node.right if node.right

      prev = val
    end

    level += 1
  end

  true
end
