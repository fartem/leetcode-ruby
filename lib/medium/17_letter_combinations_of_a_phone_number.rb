# frozen_string_literal: true

# https://leetcode.com/problems/letter-combinations-of-a-phone-number/
# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  return [] if digits.empty?

  buttons = %w[abc def ghi jkl mno prsq tuv wxyz]
  result = ['']
  digits.each_char do |c|
    curr = buttons[c.ord - '2'.ord]
    new_result = []
    result.each do |layout|
      (0...curr.length).each do |j|
        new_result << layout + curr[j]
      end
    end

    result = new_result
  end

  result
end
