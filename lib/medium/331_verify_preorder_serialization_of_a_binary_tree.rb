# frozen_string_literal: true

# https://leetcode.com/problems/verify-preorder-serialization-of-a-binary-tree/
# @param {String} preorder
# @return {Boolean}
def is_valid_serialization(preorder)
  stack = []
  tree = preorder.split(',')
  tree.each do |node|
    while node == '#' && !stack.empty? && stack.last == '#'
      stack.pop

      return false if stack.empty?

      stack.pop
    end

    stack.push(node)
  end

  stack.size == 1 && stack.first == '#'
end
