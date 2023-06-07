# frozen_string_literal: true

# https://leetcode.com/problems/is-subsequence/
# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
  s_p = 0
  t_p = 0
  while s_p != s.length && t_p != t.length
    s_p += 1 if s[s_p] == t[t_p]
    t_p += 1
  end

  s_p == s.length
end
