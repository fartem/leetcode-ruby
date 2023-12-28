# frozen_string_literal: true

# https://leetcode.com/problems/check-if-word-equals-summation-of-two-words/
# @param {String} first_word
# @param {String} second_word
# @param {String} target_word
# @return {Boolean}
def is_sum_equal(first_word, second_word, target_word)
  first = first_word.tr('a-j', '0-9').to_i
  second = second_word.tr('a-j', '0-9').to_i
  third = target_word.tr('a-j', '0-9').to_i

  first + second == third
end
