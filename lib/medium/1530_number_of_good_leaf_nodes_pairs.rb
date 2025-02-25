# frozen_string_literal: true

# https://leetcode.com/problems/number-of-good-leaf-nodes-pairs/
# @param {TreeNode} root
# @param {Integer} distance
# @return {Integer}
def count_good_pairs(root, distance)
  @result = 0
  calculate_for_count_pairs(root, distance)

  @result
end

private

# @param {TreeNode} root
# @param {Integer} distance
# @return {Integer[]}
def calculate_for_count_pairs(node, distance)
  return [] unless node

  return [1] if !node.left && !node.right

  left = calculate_for_count_pairs(node.left, distance)
  right = calculate_for_count_pairs(node.right, distance)

  left.each do |l|
    right.each do |r|
      @result += 1 if l + r <= distance
    end
  end

  path = []

  left.each { |l| path << l + 1 if l + 1 < distance }

  right.each { |r| path << r + 1 if r + 1 < distance }

  path
end
