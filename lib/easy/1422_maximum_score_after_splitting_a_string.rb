# frozen_string_literal: true

# https://leetcode.com/problems/maximum-score-after-splitting-a-string/
# @param {String} s
# @return {Integer}
def max_score(s)
  max = -1_000_000_000_000
  zeros = 0
  ones = 0
  (0...s.length).each do |i|
    if s[i] == '0'
      zeros += 1
    else
      ones += 1
    end

    max = [max, zeros - ones].max if i != s.length - 1
  end

  max + ones
end
