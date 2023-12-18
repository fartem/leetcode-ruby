# frozen_string_literal: true

require 'set'

# https://leetcode.com/problems/check-if-the-sentence-is-pangram/
# @param {String} sentence
# @return {Boolean}
def check_if_pangram(sentence)
  sentence.split('').to_set.length == 26
end
