# frozen_string_literal: false

# https://leetcode.com/problems/count-vowels-permutation/
# @param {Integer} n
# @return {Integer}
def count_vowel_permutation(n)
  a = 1
  e = 1
  i = 1
  o = 1
  u = 1
  mod = 10**9 + 7

  (2..n).each do
    a2 = (e + i + u) % mod
    e2 = (a + i) % mod
    i2 = (e + o) % mod
    o2 = i
    u2 = (o + i) % mod

    a = a2
    e = e2
    i = i2
    o = o2
    u = u2
  end

  (a + e + i + o + u) % mod
end
