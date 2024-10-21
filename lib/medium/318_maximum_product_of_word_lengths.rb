# frozen_string_literal: true

# https://leetcode.com/problems/maximum-product-of-word-lengths/
# @param {String[]} words
# @return {Integer}
def max_product318(words)
  result = 0
  letters = ::Hash.new { |hash, key| hash[key] = ::Array.new(26, 0) }
  words.each { |word| word.each_char { |char| letters[word][char.ord - 97] += 1 } }
  words.each_with_index do |word, i|
    w_letters = letters[word]
    words.each_with_index do |candidate, k|
      next if k == i

      c_letters = letters[candidate]
      correct = true
      w_letters.each_with_index do |w_letter, m|
        next unless w_letter != 0 && c_letters[m] != 0

        correct = false

        break
      end

      result = [result, word.length * candidate.length].max if correct
    end
  end

  result
end
