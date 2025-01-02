# frozen_string_literal: true

# https://leetcode.com/problems/substring-with-concatenation-of-all-words/
# @param {String} s
# @param {String[]} words
# @return {Integer[]}
def find_substring(s, words)
  @word_count = words.tally
  @k = words.size
  @word_size = words[0].size
  @substring_size = @word_size * @k

  result = []
  (0..(s.size - @substring_size)).each do |i|
    result << i if check_for_find_substring(i, s)
  end

  result
end

private

# @param {Integer} i
# @param {String} s
# @return {Boolean}
def check_for_find_substring(i, s)
  rem = @word_count.clone
  words_used = 0
  (i...(i + @substring_size)).step(@word_size).each do |j|
    sub = s[j...(j + @word_size)]

    break if rem.fetch(sub, 0).zero?

    rem[sub] = rem[sub] - 1
    words_used += 1
  end

  words_used == @k
end
