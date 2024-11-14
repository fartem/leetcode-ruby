# frozen_string_literal: true

# https://leetcode.com/problems/n-ary-tree-level-order-traversal/
# @param {NAryNode} root
# @return {List[List[int]]}
def level_order429(root)
  return [] unless root

  result = []
  queue = [root]
  while queue.size.positive?
    level = []
    size = queue.size

    (0...size).each do |_|
      node = queue.delete_at(0)
      level << node.val

      node.children&.each { |child| queue << child }
    end

    result << level
  end

  result
end
