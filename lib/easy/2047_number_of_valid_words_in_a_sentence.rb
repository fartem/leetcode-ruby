# frozen_string_literal: true

# https://leetcode.com/problems/number-of-valid-words-in-a-sentence/
# @param {String} sentence
# @return {Integer}
def count_valid_words(sentence)
  sentence.split.delete_if { |x| x =~ /[0-9]|^-|-$|.*([!,.]).+|-.*-|([!,.])-|-([!,.])/ }.length
end
