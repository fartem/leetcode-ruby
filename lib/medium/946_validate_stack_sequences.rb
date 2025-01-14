# frozen_string_literal: true

# https://leetcode.com/problems/validate-stack-sequences/
# @param {Integer[]} pushed
# @param {Integer[]} popped
# @return {Boolean}
def validate_stack_sequences(pushed, popped)
  stack = []
  n = pushed.size
  p = 0

  pushed.each do |push|
    stack << push

    while !stack.empty? && p < n && stack.last == popped[p]
      stack.delete_at(stack.size - 1)
      p += 1
    end
  end

  p == n
end
