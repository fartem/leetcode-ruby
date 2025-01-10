# frozen_string_literal: true

# https://leetcode.com/problems/word-subsets/
# @param {String[]} words1
# @param {String[]} words2
# @return {String[]}
def word_subsets(words1, words2)
  b_max = count_for_word_subsets('')

  words2.each do |b|
    b_count = count_for_word_subsets(b)

    (0...128).each { |i| b_max[i] = [b_max[i], b_count[i]].max }
  end

  result = []

  words1.each do |a|
    a_count = count_for_word_subsets(a)

    has_break = false

    (0...128).each do |i|
      next unless a_count[i] < b_max[i]

      has_break = true

      break
    end

    result << a unless has_break
  end

  result
end

private

# @param {String} s
# @return {Integer[]}
def count_for_word_subsets(s)
  result = ::Array.new(128, 0)
  s.each_byte { |b| result[b] += 1 }

  result
end
