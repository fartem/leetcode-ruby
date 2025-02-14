# frozen_string_literal: true

# https://leetcode.com/problems/sort-integers-by-the-power-value/
# @param {Integer} lo
# @param {Integer} hi
# @param {Integer} k
# @return {Integer}
def get_kth(lo, hi, k)
  powers = []

  (lo..hi).each do |i|
    num = i
    power = 0

    until num == 1
      num = num.even? ? num / 2 : num * 3 + 1
      power += 1
    end

    powers << [i, power]
  end

  powers.sort_by! { |o| o[1] }

  powers[k - 1][0]
end
