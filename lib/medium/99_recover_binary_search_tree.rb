# frozen_string_literal: true

# https://leetcode.com/problems/recover-binary-search-tree/
# @param {TreeNode} root
# @return {Void} Do not return anything, modify root in-place instead.
def recover_tree(root)
  nodes = []
  traverse99(root, nodes)
  first = nil
  (0...(nodes.length - 1)).each do |i|
    curr = nodes[i]
    nxt = nodes[i + 1]

    puts(curr.val)
    puts(nxt.val)

    first = nxt if nxt.val < curr.val
  end

  second = nodes.first
  (1...nodes.length).each do |i|
    prev = nodes[i - 1]
    curr = nodes[i]

    next unless prev.val < first.val && first.val < curr.val

    second = curr

    break
  end

  temp = first.val
  first.val = second.val
  second.val = temp
end

private

def traverse99(root, nodes)
  return unless root

  traverse99(root.left, nodes)
  nodes << root
  traverse99(root.right, nodes)
end
