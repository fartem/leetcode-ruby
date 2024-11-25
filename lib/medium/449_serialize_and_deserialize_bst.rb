# frozen_string_literal: true

# https://leetcode.com/problems/serialize-and-deserialize-bst/
# @param {TreeNode} root
# @return {String}
def serialize(root)
  return '#' unless root

  result = []
  result << root.val

  left = serialize(root.left)
  result << ','
  result << left

  right = serialize(root.right)
  result << ','
  result << right

  result.join
end

# @param {String} data
# @return {TreeNode}
def deserialize(data)
  raw_data = data.split(',')

  deserialize_from_string(raw_data, 0, raw_data.size - 1)
end

# @param {String[]} data
# @param {Integer} l
# @param {Integer} r
# @return {TreeNode}
def deserialize_from_string(data, l, r)
  return if data[l] == '#'

  root = ::TreeNode.new(data[l].to_i)
  built = false

  ((l + 1)..r).each do |i|
    value = data[i]

    next if value == '#'

    next unless value.to_i > root.val

    built = true
    root.left = deserialize_from_string(data, l + 1, i - 1)
    root.right = deserialize_from_string(data, i, r)

    break
  end

  root.left = deserialize_from_string(data, l + 1, r) unless built

  root
end
