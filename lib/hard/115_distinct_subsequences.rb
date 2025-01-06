# frozen_string_literal: true

# https://leetcode.com/problems/distinct-subsequences/
# @param {String} s
# @param {String} t
# @return {Integer}
def num_distinct(s, t)
  m = s.size
  n = t.size
  dp = ::Array.new(n + 1, 0)
  dp[0] = 1

  (1..m).each do |i|
    (1..n).reverse_each do |j|
      dp[j] = dp[j - 1] + dp[j] if s[i - 1] == t[j - 1]
    end
  end

  dp[n]
end
