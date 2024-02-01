# frozen_string_literal: true

# https://leetcode.com/problems/redistribute-characters-to-make-all-strings-equal/
# @param {String[]} words
# @return {Boolean}
def make_equal(words)
  letters = ::Array.new(128, 0)
  words.each do |word|
    word.each_byte do |b|
      letters[b] += 1
    end
  end

  letters.each do |count|
    next if count.zero?

    return false if count < words.length || count % words.length != 0
  end

  true
end
