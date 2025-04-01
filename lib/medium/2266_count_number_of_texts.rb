# frozen_string_literal: true

# https://leetcode.com/problems/count-number-of-texts/
# @param {String} pressed_keys
# @return {Integer}
def count_texts(pressed_keys)
  mod = 10**9 + 7
  n = pressed_keys.size
  dp = ::Array.new(n + 1, 0)
  dp[0] = 1

  (1..n).each do |i|
    current_char = pressed_keys[i - 1]
    dp[i] = dp[i - 1] % mod

    next unless i >= 2 && pressed_keys[i - 2] == current_char

    dp[i] = (dp[i] + dp[i - 2]) % mod

    next unless i >= 3 && pressed_keys[i - 3] == current_char

    dp[i] = (dp[i] + dp[i - 3]) % mod
    dp[i] = (dp[i] + dp[i - 4]) % mod if %w[7 9].include?(current_char) && i >= 4 && pressed_keys[i - 4] == current_char
  end

  dp[n] % mod
end
