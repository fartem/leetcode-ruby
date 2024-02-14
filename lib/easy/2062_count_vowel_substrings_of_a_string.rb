# frozen_string_literal: true

# https://leetcode.com/problems/count-vowel-substrings-of-a-string/
# @param {String} word
# @return {Integer}
def count_vowel_substrings(word)
  result = 0
  vowel = { 'a' => 0, 'e' => 0, 'i' => 0, 'o' => 0, 'u' => 0 }
  word.chars.each_with_index do |c, i|
    next unless vowel.keys.include?(c)

    vowel[c] += 1
    Array((i + 1)...word.length).each do |j|
      break unless vowel.keys.include?(word[j])

      vowel[word[j]] += 1
      result += 1 if vowel.values.all?(&:positive?)
    end

    vowel = { 'a' => 0, 'e' => 0, 'i' => 0, 'o' => 0, 'u' => 0 }
  end

  result
end
