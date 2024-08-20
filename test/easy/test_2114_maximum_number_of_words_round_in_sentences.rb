# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2114_maximum_number_of_words_round_in_sentences'
require 'minitest/autorun'

class MaximumNumberOfWordsRoundInSentencesTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      6,
      most_words_found(
        [
          'alice and bob love leetcode',
          'i think so too',
          'this is great thanks very much'
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      3,
      most_words_found(
        [
          'please wait',
          'continue to fight',
          'continue to win'
        ]
      )
    )
  end
end
