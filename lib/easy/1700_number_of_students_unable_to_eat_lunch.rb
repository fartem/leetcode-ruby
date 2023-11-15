# frozen_string_literal: true

# https://leetcode.com/problems/number-of-students-unable-to-eat-lunch/
# @param {Integer[]} students
# @param {Integer[]} sandwiches
# @return {Integer}
def count_students(students, sandwiches)
  arr = [0, 0]
  students.each { |s| arr[s] += 1 }
  sandwiches.each do |s|
    break if arr[s].zero?

    arr[s] -= 1
  end

  arr[0] + arr[1]
end
