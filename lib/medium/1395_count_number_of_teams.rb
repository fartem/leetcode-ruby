# frozen_string_literal: true

# https://leetcode.com/problems/count-number-of-teams/
# @param {Integer[]} rating
# @return {Integer}
def num_teams(rating)
  size = rating.size
  up = ::Array.new(size, 0)
  down = ::Array.new(size, 0)
  result = 0

  (0...size).each do |i|
    i.downto(0) do |j|
      if rating[i] > rating[j]
        up[i] += 1
        result += up[j]
      end
    end
  end

  (0...size).each do |i|
    i.downto(0) do |j|
      if rating[i] < rating[j]
        down[i] += 1
        result += down[j]
      end
    end
  end

  result
end
