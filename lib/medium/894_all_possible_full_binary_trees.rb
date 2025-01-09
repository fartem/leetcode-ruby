# frozen_string_literal: true

require_relative '../common/binary_tree'

# https://leetcode.com/problems/all-possible-full-binary-trees/
# @param {Integer} n
# @return {TreeNode[]}
def all_possible_fbt(n)
  @values = {}

  fill_all_possible_fbt(n)
end

private

# @param {Integer} n
# @result {TreeNode[]}
def fill_all_possible_fbt(n)
  return @values[n] if @values.key?(n)

  nodes = []

  if n == 1
    nodes << ::TreeNode.new(0)
  elsif n.odd?
    (0...n).each do |i|
      j = n - 1 - i

      fill_all_possible_fbt(i).each do |left|
        fill_all_possible_fbt(j).each do |right|
          nodes << ::TreeNode.new(0, left, right)
        end
      end
    end
  end

  @values[n] = nodes
end
