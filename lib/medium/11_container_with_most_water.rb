# frozen_string_literal: true

# https://leetcode.com/problems/container-with-most-water/
# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  result = 0
  left = 0
  right = height.length - 1
  while left < right
    result = [result, (right - left) * [height[left], height[right]].min].max

    if height[left] < height[right]
      left += 1
    else
      right -= 1
    end
  end

  result
end
