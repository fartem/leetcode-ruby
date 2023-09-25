# frozen_string_literal: true

# https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/
# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
  max = candies.max

  candies.map { |count| count + extra_candies >= max }
end
