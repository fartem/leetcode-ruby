# frozen_string_literal: true

# https://leetcode.com/problems/string-matching-in-an-array/
# @param {String[]} words
# @return {String[]}
def string_matching(words)
  matches = ::Set.new
  words.each do |word|
    next if matches.include?(word)

    words.each do |candidate|
      matches << candidate if word != candidate && word.include?(candidate)
    end
  end

  matches.to_a
end
