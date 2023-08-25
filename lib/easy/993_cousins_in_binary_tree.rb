# frozen_string_literal: true

# https://leetcode.com/problems/cousins-in-binary-tree/
# @param {TreeNode} root
# @param {Integer} x
# @param {Integer} y
# @return {Boolean}
def is_cousins(root, x, y)
  queue = []
  queue << root
  queue << nil
  found = 0
  until queue.empty?
    curr = queue.delete_at(0)
    if curr.nil?
      queue << nil unless queue.empty?
      found = 0

      next
    end

    l = curr.left
    r = curr.right

    if !l.nil? && (l.val == x || l.val == y)
      found += 1
    elsif !r.nil? && (r.val == x || r.val == y)
      found += 1
    end

    return true if found == 2

    queue << l unless l.nil?
    queue << r unless r.nil?
  end

  false
end
