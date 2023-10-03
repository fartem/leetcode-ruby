# frozen_string_literal: true

# https://leetcode.com/problems/average-salary-excluding-the-minimum-and-maximum-salary/
# @param {Integer[]} salary
# @return {Float}
def average(salary)
  salary.sort!
  sum = 0.0
  (1...salary.length - 1).each { |i| sum += salary[i] }

  sum / (salary.length - 2)
end
