# frozen_string_literal: true

# https://leetcode.com/problems/maximum-value-of-a-string-in-an-array/
# @param {String[]} strs
# @return {Integer}
def maximum_value(strs)
  result = 0
  strs.each do |str|
    is_number = /(\D+)/.match(str).nil?

    result =
      if is_number
        [result, str.to_i].max
      else
        [result, str.length].max
      end
  end

  result
end
