# frozen_string_literal: true

# https://leetcode.com/problems/maximum-product-of-splitted-binary-tree/
# @param {TreeNode} root
# @return {Integer}
def max_product_for_splitted_binary_tree(root)
  @sum = sum_for_splitted_binary_tree(root)
  @result = 0

  calculate_for_splitted_binary_tree(root)

  (@result % (1e9 + 7)).to_i
end

private

# @param {TreeNode}
# @return {Integer}
def sum_for_splitted_binary_tree(node)
  return 0 unless node

  sum_for_splitted_binary_tree(node.left) + sum_for_splitted_binary_tree(node.right) + node.val
end

# @param {TreeNode}
# @return {Integer}
def calculate_for_splitted_binary_tree(node)
  return 0 unless node

  f_sum = calculate_for_splitted_binary_tree(node.left) + calculate_for_splitted_binary_tree(node.right) + node.val
  s_sum = @sum - f_sum

  @result = [@result, f_sum * s_sum].max

  f_sum
end
