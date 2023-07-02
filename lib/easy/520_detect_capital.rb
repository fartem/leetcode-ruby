# frozen_string_literal: true

# https://leetcode.com/problems/detect-capital/
# @param {String} word
# @return {Boolean}
def detect_capital_use(word)
  if word[0] == word[0].upcase
    sub = word[1, word.length]

    return sub == sub.downcase || word == word.upcase
  end

  word == word.downcase
end
