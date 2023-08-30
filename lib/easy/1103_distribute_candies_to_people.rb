# frozen_string_literal: true

# https://leetcode.com/problems/distribute-candies-to-people/
# @param {Integer} candies
# @param {Integer} num_people
# @return {Integer[]}
def distribute_candies(candies, num_people)
  result = ::Array.new(num_people, 0)
  i = 0
  while candies.positive?
    index = i
    i += 1
    result[index % num_people] += [candies, i].min
    candies -= i
  end

  result
end
