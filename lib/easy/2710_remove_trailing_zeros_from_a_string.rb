# frozen_string_literal: true

# https://leetcode.com/problems/remove-trailing-zeros-from-a-string/
# @param {String} num
# @return {String}
def remove_trailing_zeros(num)
  num.sub(/0+$/, '')
end
