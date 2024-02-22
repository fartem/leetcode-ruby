# frozen_string_literal: true

# https://leetcode.com/problems/finding-3-digit-even-numbers/
# @param {Integer[]} digits
# @return {Integer[]}
def find_even_numbers(digits)
  nums = ::Array.new(1000, 0)
  digits.each { |digit| nums[digit] += 1 }

  result = []
  (100...1000).step(2).each do |i|
    num = i
    digits_in_num = ::Array.new(10, 0)
    while num.positive?
      digits_in_num[num % 10] += 1
      num /= 10
    end

    is_valid = true

    (0...digits_in_num.length).each do |j|
      next if digits_in_num[j].zero?

      next unless nums[j].zero? || nums[j] < digits_in_num[j]

      is_valid = false

      break
    end

    result << i if is_valid
  end

  result
end
