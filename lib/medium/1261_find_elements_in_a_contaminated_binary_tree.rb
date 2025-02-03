# frozen_string_literal: true

# https://leetcode.com/problems/find-elements-in-a-contaminated-binary-tree/
class FindElements
  # @param {TreeNode} root
  def initialize(root)
    root.val = 0

    @values = ::Set.new

    recover(root)
  end

  # @param {Integer} target
  # @return {Boolean}
  def find(target) = @values.include?(target)

  private

  # @param {TreeNode} node
  # @return {Void}
  def recover(node)
    return unless node

    @values << node.val

    if node.left
      node.left.val = 2 * node.val + 1

      recover(node.left)
    end

    return unless node.right

    node.right.val = 2 * node.val + 2

    recover(node.right)
  end
end
