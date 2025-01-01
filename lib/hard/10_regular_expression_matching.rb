# frozen_string_literal: true

@mem = {}

# https://leetcode.com/problems/regular-expression-matching/
# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
  s = s.bytes
  p = p.bytes
  dp = ::Array.new(s.size + 1) { ::Array.new(p.size + 1, false) }
  m = s.size
  n = p.size
  dp[m][n] = true

  (0..m).reverse_each do |i|
    (0...n).reverse_each do |j|
      first = i < m && (s[i] == p[j] || p[j] == 46)
      dp[i][j] =
        if p[j + 1] == 42
          dp[i][j + 2] || (first && dp[i + 1][j])
        else
          first && dp[i + 1][j + 1]
        end
    end
  end

  dp[0][0]
end
