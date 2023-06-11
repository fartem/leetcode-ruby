# frozen_string_literal: true

# https://leetcode.com/problems/fizz-buzz/
# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  result = ['1']
  (2..n).step(1) do |i|
    result << if (i % 3).zero? && (i % 5).zero?
                'FizzBuzz'
              elsif (i % 3).zero?
                'Fizz'
              elsif (i % 5).zero?
                'Buzz'
              else
                i.to_s
              end
  end

  result
end
