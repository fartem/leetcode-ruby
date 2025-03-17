# frozen_string_literal: true

# https://leetcode.com/problems/step-by-step-directions-from-a-binary-tree-node-to-another/
# @param {TreeNode} root
# @param {Integer} start_value
# @param {Integer} dest_value
# @return {String}
def get_directions(root, start_value, dest_value)
  find_path =
    lambda { |node, target, path|
      return false if node.nil?

      path << node

      return true if node.val == target

      return true if find_path.call(node.left, target, path) || find_path.call(node.right, target, path)

      path.pop

      false
    }

  start_path = []
  dest_path = []

  find_path.call(root, start_value, start_path)
  find_path.call(root, dest_value, dest_path)

  lca = nil
  [start_path.size, dest_path.size].min.times do |i|
    break unless start_path[i] == dest_path[i]

    lca = start_path[i]
  end

  start_to_lca = []
  lca_to_dest = []

  start_path.reverse.each_with_index do |node, _i|
    break if node == lca

    start_to_lca << 'U'
  end

  lca_index = dest_path.index(lca)
  (lca_index...dest_path.size - 1).each do |i|
    lca_to_dest << if dest_path[i].left == dest_path[i + 1]
                     'L'
                   else
                     'R'
                   end
  end

  (start_to_lca + lca_to_dest).join
end
