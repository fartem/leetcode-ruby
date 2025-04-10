# frozen_string_literal: true

# https://leetcode.com/problems/score-of-a-string/
# @param {String} s
# @return {Integer}
def score_of_string(s)
  result = 0

  (1...s.size).each do |i|
    result += (s[i - 1].ord - s[i].ord).abs
  end

  result
end
