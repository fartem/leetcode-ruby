# frozen_string_literal: true

# https://leetcode.com/problems/merge-similar-items/
# @param {Integer[][]} items1
# @param {Integer[][]} items2
# @return {Integer[][]}
def merge_similar_items(items1, items2)
  map = ::Array.new(1000, 0)
  items1.each { |item| map[item[0] - 1] = item[1] }
  items2.each { |item| map[item[0] - 1] = map[item[0] - 1] + item[1] }

  result = []
  map.each_with_index do |num, i|
    next unless num.positive?

    result << [i + 1, num]
  end

  result
end
