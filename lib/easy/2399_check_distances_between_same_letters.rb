# frozen_string_literal: true

# https://leetcode.com/problems/check-distances-between-same-letters/
# @param {String} s
# @param {Integer[]} distance
# @return {Boolean}
def check_distances(s, distance)
  letters = ::Array.new(26, -1)
  (0...s.length).each do |i|
    c = s[i].ord - 97

    letters[c] =
      if letters[c] == -1
        i
      else
        i - letters[c] - 1
      end
  end

  (0...distance.length).each do |i|
    dist = distance[i]
    let = letters[i]

    return false if let != -1 && let != dist
  end

  true
end
