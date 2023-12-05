# frozen_string_literal: true

# https://leetcode.com/problems/check-if-one-string-swap-can-make-strings-equal/
# @param {String} s1
# @param {String} s2
# @return {Boolean}
def are_almost_equal(s1, s2)
  count = 0
  indices = ::Array.new(2, 0)
  p = 0
  (0...s1.length).each do |i|
    next if s1[i] == s2[i]

    count += 1

    return false if count > 2

    indices[p] = i
    p += 1
  end

  s1[indices[0]] == s2[indices[1]] && s1[indices[1]] == s2[indices[0]]
end
