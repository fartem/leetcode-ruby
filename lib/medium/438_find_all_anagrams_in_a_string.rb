# frozen_string_literal: true

# https://leetcode.com/problems/find-all-anagrams-in-a-string/
# @param {String} s
# @param {String} p
# @return {Integer[]}
def find_anagrams(s, p)
  result = []
  c_p = ::Array.new(128, 0)
  p.each_byte { |b| c_p[b] += 1 }

  c_s = ::Array.new(128, 0)
  c = 0
  (0...s.size).each do |i|
    c_s[s[i].ord] += 1

    next if (i - c + 1) < p.size

    result << c if is_anagram?(c_s, c_p)

    c_s[s[c].ord] -= 1
    c += 1
  end

  result
end

private

# @param {Integer[]} c_s
# @param {Integer[]} c_p
# @return {Boolean}
def is_anagram?(c_s, c_p)
  (0...c_s.size).each do |i|
    return false unless c_s[i] == c_p[i]
  end

  true
end
