# frozen_string_literal: true

# https://leetcode.com/problems/minimum-number-of-moves-to-seat-everyone/
# @param {Integer[]} seats
# @param {Integer[]} students
# @return {Integer}
def min_moves_to_seat(seats, students)
  seats.sort.zip(students.sort).sum { |a, b| (a - b).abs }
end
