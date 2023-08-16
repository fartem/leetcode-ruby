# frozen_string_literal: true

$alphabet = %w[
  .-
  -...
  -.-.
  -..
  .
  ..-.
  --.
  ....
  ..
  .---
  -.-
  .-..
  --
  -.
  ---
  .--.
  --.-
  .-.
  ...
  -
  ..-
  ...-
  .--
  -..-
  -.--
  --..
]

# https://leetcode.com/problems/unique-morse-code-words/
# @param {String[]} words
# @return {Integer}
def unique_morse_representations(words)
  uniq = ::Set.new
  words.each do |word|
    str = ''
    (0...word.length).step(1) do |i|
      str += $alphabet[word[i].ord - 97]
    end

    uniq << str
  end

  uniq.length
end
