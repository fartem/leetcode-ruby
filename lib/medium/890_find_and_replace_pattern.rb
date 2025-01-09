# frozen_string_literal: true

# https://leetcode.com/problems/find-and-replace-pattern/
# @param {String[]} words
# @param {String} pattern
# @return {String[]}
def find_and_replace_pattern(words, pattern) = words.select { |word| are_match(word, pattern) }

private

# @param {String} word
# @param {String} word
# @return {Boolean}
def are_match(word, pattern)
  values = {}
  (0...word.size).each do |i|
    w = word[i]
    p = pattern[i]

    values[w] = p unless values.include?(w)

    return false unless values[w] == p
  end

  seen = ::Array.new(128, false)
  values.each_value do |value|
    return false if seen[value.ord]

    seen[value.ord] = true
  end

  true
end
