# frozen_string_literal: true

# https://leetcode.com/problems/final-value-of-variable-after-performing-operations/
# @param {String[]} operations
# @return {Integer}
def final_value_after_operations(operations)
  operations.sum { |op| op[0] == '-' || op[2] == '-' ? -1 : 1 }
end
