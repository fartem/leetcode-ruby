# frozen_string_literal: true

# https://leetcode.com/problems/water-bottles/
# @param {Integer} num_bottles
# @param {Integer} num_exchange
# @return {Integer}
def num_water_bottles(num_bottles, num_exchange)
  result = num_bottles
  e_bottles = num_bottles
  while e_bottles >= num_exchange
    portion = e_bottles / num_exchange
    result += portion
    e_bottles -= portion * num_exchange
    e_bottles += portion
  end

  result
end
