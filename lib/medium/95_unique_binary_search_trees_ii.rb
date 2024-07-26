# frozen_string_literal: true

require_relative '../common/binary_tree'

# https://leetcode.com/problems/unique-binary-search-trees-ii/
# @param {Integer} n
# @return {TreeNode[]}
def generate_trees(n)
  generate95(1, n)
end

private

# @param {Integer} i
# @param {Integer} j
# @return {TreeNode}
def generate95(i, j)
  nodes = []

  if i > j
    nodes << nil
  else
    (i..j).each do |mid|
      left = generate95(i, mid - 1)
      right = generate95(mid + 1, j)

      left.each do |l|
        right.each do |r|
          node = ::TreeNode.new(mid)
          node.left = l
          node.right = r

          nodes << node
        end
      end
    end
  end

  nodes
end
