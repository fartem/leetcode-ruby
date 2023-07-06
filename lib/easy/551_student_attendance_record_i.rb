# frozen_string_literal: true

# https://leetcode.com/problems/student-attendance-record-i/
# @param {String} s
# @return {Boolean}
def check_record(s)
  absent = 0
  late = 0
  (0..s.length).step(1) do |i|
    char = s[i]
    if char == 'L'
      late += 1
    else
      absent += 1 if char == 'A'
      late = 0 if late < 3
    end
  end

  absent < 2 && late < 3
end
