# frozen_string_literal: true

# https://leetcode.com/problems/maximum-depth-of-n-ary-tree/
# @param {NAryNode} root
# @return {int}
def max_depth_of_n_ary_tree(root)
  return 0 if root.nil?

  result = 0
  queue = ::Queue.new
  queue << root
  until queue.empty?
    size = queue.length
    while size.positive?
      parent = queue.pop
      parent.children&.each do |child|
        queue << child
      end
      size -= 1
    end

    result += 1
  end

  result
end
