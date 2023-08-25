# frozen_string_literal: true

# https://leetcode.com/problems/find-the-town-judge/
# @param {Integer} n
# @param {Integer[][]} trust
# @return {Integer}
def find_judge(n, trust)
  trusted_by = ::Array.new(n + 1, 0)
  trusted = ::Array.new(n + 1, 0)

  trust.each do |people|
    trusted[people[0]] += 1
    trusted_by[people[1]] += 1
  end

  (1..n).each do |i|
    return i if trusted_by[i] == n - 1 && trusted[i].zero?
  end

  -1
end
