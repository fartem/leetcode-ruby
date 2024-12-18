# frozen_string_literal: true

# https://leetcode.com/problems/find-mode-in-binary-search-tree/
# @param {TreeNode} root
# @return {Integer[]}
def find_mode(root)
  @prev = -1
  @count = 1
  @max = -1

  result = []
  _traverse(root, result)

  result
end

# @param {TreeNode} node
# @param {Integer[]} modes
def _traverse(node, modes)
  return if node.nil?

  _traverse(node.left, modes)

  if @prev != -1
    if @prev == node.val
      @count += 1
    else
      @count = 1
    end
  end

  # noinspection RubyMismatchedArgumentType
  if @count > @max
    @max = @count
    modes.clear
    modes << node.val
  elsif @count == @max
    modes << node.val
  end

  @prev = node.val

  _traverse(node.right, modes)
end
