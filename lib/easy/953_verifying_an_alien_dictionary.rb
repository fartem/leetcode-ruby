# frozen_string_literal: true

# https://leetcode.com/problems/verifying-an-alien-dictionary/
# @param {String[]} words
# @param {String} order
# @return {Boolean}
def is_alien_sorted(words, order)
  dictionary = ::Array.new(128)
  dictionary['@'.ord] = -1
  (0...order.length).each do |i|
    dictionary[order[i].ord] = i
  end

  (1...words.length).each do |i|
    f = words[i - 1]
    s = words[i]
    f_l = f.length
    s_l = s.length
    max_l = [f_l, s_l].max
    (0...max_l).each do |j|
      a = f_l <= j ? '@' : f[j]
      b = s_l <= j ? '@' : s[j]

      return false if dictionary[a.ord] > dictionary[b.ord]

      break if a != b
    end
  end

  true
end
