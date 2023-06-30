# frozen_string_literal: true

# https://leetcode.com/problems/perfect-number/
# @param {Integer} num
# @return {Boolean}
def check_perfect_number(num)
  sum = 0
  i = 1
  while i * i <= num
    if (num % i).zero?
      sum += i
      sum += num / i if i * i != num
    end

    i += 1
  end

  sum - num == num
end
