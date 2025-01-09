# frozen_string_literal: true

# https://leetcode.com/problems/palindrome-pairs/
# @param {String[]} words
# @return {Integer[][]}
def palindrome_pairs(words)
  result = []

  word_map = words.each_with_index.to_h

  words.each_with_index do |word, index|
    valid_prefixes, valid_suffixes = get_partials(word)

    valid_prefixes.each do |prefix|
      reverse = prefix.reverse

      next unless word_map[reverse] && index != word_map[reverse]

      result << [index, word_map[reverse]]
    end

    valid_suffixes.each do |suffix|
      reverse = suffix.reverse

      result << [word_map[reverse], index] if word_map[reverse] && index != word_map[reverse]
    end
  end

  result.uniq
end

private

# @param {String} word
# @return {Integer[]}
def get_partials(word)
  valid_prefixes = []
  valid_suffixes = []

  (0..word.length).each do |i|
    prefix = word.slice(0, i)
    suffix = word.slice(i, word.size)

    valid_prefixes << prefix if suffix == suffix.reverse
    valid_suffixes << suffix if prefix == prefix.reverse
  end

  [valid_prefixes, valid_suffixes]
end
