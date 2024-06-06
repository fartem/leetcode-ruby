# frozen_string_literal: true

# https://leetcode.com/problems/delete-greatest-value-in-each-row/
# @param {Integer[][]} grid
# @return {Integer}
def delete_greatest_value(grid)
  grid.each(&:sort!)

  (0...grid.first.length).sum do |i|
    max = 0
    grid.each { |line| max = [max, line[i]].max }

    max
  end
end
