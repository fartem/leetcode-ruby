# frozen_string_literal: true

# https://leetcode.com/problems/find-common-characters/
# @param {String[]} words
# @return {String[]}
def common_chars(words)
  return [] if words.length == 1

  common = ::Array.new(128, 0)
  words.first.each_char do |c|
    common[c.ord] += 1
  end

  (1...words.length).each do |i|
    letters = ::Array.new(128, 0)
    words[i].each_char do |c|
      letters[c.ord] += 1
    end

    (0...common.length).each do |k|
      common[k] = [common[k], letters[k]].min
    end
  end

  result = []
  common.each_with_index do |count, i|
    (0...count).each do |_|
      result << i.chr unless count.zero?
    end
  end

  result
end
