# frozen_string_literal: true

# https://leetcode.com/problems/three-consecutive-odds/
# @param {Integer[]} arr
# @return {Boolean}
def three_consecutive_odds(arr)
  count = 0
  arr.each do |num|
    if num.odd?
      count += 1

      return true if count == 3
    elsif count.positive?
      count = 0
    end
  end

  false
end
