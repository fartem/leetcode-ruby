# frozen_string_literal: true

# https://leetcode.com/problems/populating-next-right-pointers-in-each-node-ii/
# @param {Node} root
# @return {Node}
def connect117(root)
  return unless root

  nodes = [root]
  until nodes.empty?
    size = nodes.size
    level = []
    until size.zero?
      node = nodes.shift
      if node.left
        level << node.left
        nodes << node.left
      end
      if node.right
        level << node.right
        nodes << node.right
      end

      size -= 1
    end

    (0...(level.size - 1)).each do |i|
      level[i].next = level[i + 1]
    end
  end

  root
end
