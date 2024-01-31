# frozen_string_literal: true

# https://leetcode.com/problems/final-value-of-variable-after-performing-operations/
# @param {String[]} operations
# @return {Integer}
def final_value_after_operations(operations)
  result = 0
  operations.each do |op|
    if op[0] == '-' || op[2] == '-'
      result -= 1
    else
      result += 1
    end
  end

  result
end
