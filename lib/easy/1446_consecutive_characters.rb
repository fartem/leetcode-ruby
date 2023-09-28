# frozen_string_literal: true

# https://leetcode.com/problems/consecutive-characters/
# @param {String} s
# @return {Integer}
def max_power(s)
  max = 1
  counter = 1
  prev = s[0]
  (1...s.length).each do |i|
    c = s[i]
    if prev == c
      counter += 1
    else
      max = counter if counter > max
      counter = 1
    end

    prev = c
  end

  [max, counter].max
end
