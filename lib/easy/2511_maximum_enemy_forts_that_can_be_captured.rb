# frozen_string_literal: true

# https://leetcode.com/problems/maximum-enemy-forts-that-can-be-captured/
# @param {Integer[]} forts
# @return {Integer}
def capture_forts(forts)
  result = 0
  i = 0
  j = 0
  while i < forts.length
    unless forts[i].zero?
      result = [result, i - j - 1].max if forts[j] == -forts[i]

      j = i
    end

    i += 1
  end

  result
end
