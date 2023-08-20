# frozen_string_literal: true

# https://leetcode.com/problems/n-ary-tree-postorder-traversal/
# @param {Node} root
# @return {List[int]}
def postorder(root)
  return [] if root.nil?

  result = []
  stack = []
  stack.push(root)
  until stack.empty?
    node = stack.pop
    # noinspection RubyNilAnalysis
    result.insert(0, node.val)
    node.children&.each { |child| stack.push(child) }
  end

  result
end
