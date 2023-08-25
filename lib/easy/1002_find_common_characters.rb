# frozen_string_literal: true

# https://leetcode.com/problems/find-common-characters/
# @param {String[]} words
# @return {String[]}
def common_chars(words)
  return [] if words.length == 1

  common = ::Array.new(128, 0)
  f_s = words.first
  (0...f_s.length).each do |i|
    common[f_s[i].ord] += 1
  end

  (1...words.length).each do |i|
    letters = ::Array.new(128, 0)
    word = words[i]
    (0...word.length).each do |j|
      letters[word[j].ord] += 1
    end

    (0...common.length).each do |k|
      common[k] = [common[k], letters[k]].min
    end
  end

  result = []
  common.each_with_index do |count, i|
    (0...count).each do |_j|
      result << i.chr unless count.zero?
    end
  end

  result
end
