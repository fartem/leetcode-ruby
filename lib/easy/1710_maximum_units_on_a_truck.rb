# frozen_string_literal: true

# https://leetcode.com/problems/maximum-units-on-a-truck/
# @param {Integer[][]} box_types
# @param {Integer} truck_size
# @return {Integer}
def maximum_units(box_types, truck_size)
  desc_box_types = box_types.sort_by! { |arr| -arr.last }
  result = 0
  desc_box_types.each do |arr|
    break unless truck_size.positive?

    boxes = [arr.first, truck_size].min
    truck_size -= arr.first
    result += (boxes * arr.last)
  end

  result
end
