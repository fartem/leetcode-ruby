# frozen_string_literal: true

# https://leetcode.com/problems/find-original-array-from-doubled-array/
# @param {Integer[]} changed
# @return {Integer[]}
def find_original_array(changed)
  result = []
  q = []
  changed.sort!

  changed.each do |num|
    if !q.empty? && num == q.first
      q.shift
    else
      q << num * 2
      result << num
    end
  end

  q.empty? ? result : []
end
