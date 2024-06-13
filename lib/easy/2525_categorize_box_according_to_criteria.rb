# frozen_string_literal: true

# https://leetcode.com/problems/categorize-box-according-to-criteria/
# @param {Integer} length
# @param {Integer} width
# @param {Integer} height
# @param {Integer} mass
# @return {String}
def categorize_box(length, width, height, mass)
  volume = length * width * height
  is_bulky = length >= 10.pow(4) || width >= 10.pow(4) || height >= 10.pow(4) || volume >= 10.pow(9)
  is_heavy = mass >= 100

  return 'Both' if is_bulky && is_heavy

  return 'Neither' if !is_bulky && !is_heavy

  is_bulky ? 'Bulky' : 'Heavy'
end
