# frozen_string_literal: true

# https://leetcode.com/problems/maximum-number-of-balloons/
# @param {String} text
# @return {Integer}
def max_number_of_balloons(text)
  count = ::Array.new(128, 0)
  text.each_byte { |b| count[b] += 1 }

  result = ::Float::INFINITY
  (0...count.length).each do |i|
    c = i.chr
    value = ::Float::INFINITY

    case c
    when 'a', 'b', 'n'
      value = count[i]
    when 'l', 'o'
      value = count[i] / 2
    end

    return 0 if value.zero?

    result = value if value < result
  end

  result
end
