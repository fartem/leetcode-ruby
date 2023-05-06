# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  count = {}
  nums.each do |num|
    val = count[num]
    count[num] = val.nil? ? 1 : val + 1
  end
  count.find { |_key, value| value == 1 }.first
end
