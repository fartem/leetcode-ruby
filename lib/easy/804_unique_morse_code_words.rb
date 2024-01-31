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
    word.each_byte do |b|
      str += $alphabet[b - 97]
    end

    uniq << str
  end

  uniq.length
end
