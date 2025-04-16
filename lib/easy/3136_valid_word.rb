# frozen_string_literal: true

# https://leetcode.com/problems/valid-word/
# @param {String} word
# @return {Boolean}
def is_valid3136(word)
  word.match?(/\A(?=.*[aeiouAEIOU])(?=.*[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ])[a-zA-Z0-9]{3,}\z/)
end
