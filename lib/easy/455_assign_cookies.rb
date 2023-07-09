# frozen_string_literal: true

# https://leetcode.com/problems/assign-cookies/
# @param {Integer[]} g
# @param {Integer[]} s
# @return {Integer}
def find_content_children(g, s)
  g.sort!
  s.sort!
  g_p = 0
  s_p = 0
  result = 0
  while g_p < g.length && s_p < s.length
    s_p += 1 while s_p < s.length && s[s_p] < g[g_p]
    next unless s_p < s.length

    g_p += 1
    s_p += 1
    result += 1
  end

  result
end
