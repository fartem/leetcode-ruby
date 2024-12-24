# frozen_string_literal: true

# https://leetcode.com/problems/top-k-frequent-words/
# @param {String[]} words
# @param {Integer} k
# @return {String[]}
def top_k_frequent_words(words, k)
  values = words.each_with_object(::Hash.new(0)) { |e, total| total[e] += 1; }

  to_sort = values.to_a
  to_sort.sort! do |a, b|
    diff = b[1] - a[1]
    if diff.zero?
      a[0] <=> b[0]
    else
      diff
    end
  end

  to_sort[0...k].map(&:first)
end
