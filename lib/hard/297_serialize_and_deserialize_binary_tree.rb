# frozen_string_literal: true

# https://leetcode.com/problems/serialize-and-deserialize-binary-tree/
# @param {TreeNode} root
# @return {String}
def serialize_binary_tree(root)
  preorder =
    lambda do |node|
      return [nil] unless node

      [node.val] + preorder.call(node.left) + preorder.call(node.right)
    end

  preorder.call(root).to_json
end

# @param {String} data
# @return {TreeNode}
def deserialize_binary_tree(data)
  return if data.empty?

  helper =
    lambda do |preorder|
      return if preorder.empty?

      current = preorder.shift

      return unless current

      root = ::TreeNode.new(current)
      root.left = helper.call(preorder)
      root.right = helper.call(preorder)

      root
    end

  helper.call(::JSON.parse(data))
end
