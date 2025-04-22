# frozen_string_literal: true

# https://leetcode.com/problems/find-the-peaks/
# @param {Integer[]} mountain
# @return {Integer[]}
def find_peaks(mountain)
  result = []

  (1...mountain.size - 1).each do |i|
    result << i if mountain[i] > mountain[i - 1] && mountain[i] > mountain[i + 1]
  end

  result
end
