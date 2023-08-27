# frozen_string_literal: true

# https://leetcode.com/problems/number-complement/
# @param {Integer} num
# @return {Integer}
def find_complement(num)
  bits = ((::Math.log(num) / ::Math.log(2)) + 1).floor
  (0...bits).each do |i|
    num = (num ^ (1 << i))
  end

  num
end
