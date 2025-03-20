# frozen_string_literal: true

# https://leetcode.com/problems/longest-palindrome-by-concatenating-two-letter-words/
# @param {String[]} words
# @return {Integer}
def longest_palindrome2131(words)
  freq = ::Hash.new(0)
  words.each { |word| freq[word] += 1 }

  total = 0
  processed = ::Set.new

  freq.each_key do |word|
    rev = word.reverse

    next if word == rev

    next if processed.include?(word)

    processed.add(word)
    processed.add(rev)

    current_count = freq[word]
    rev_count = freq[rev]
    min_pairs = [current_count, rev_count].min
    total += min_pairs * 4
  end

  has_odd_count = false

  freq.each do |word, count|
    next unless word == word.reverse

    pairs = count / 2
    total += pairs * 4

    has_odd_count ||= count.odd?
  end

  total += 2 if has_odd_count

  total
end
