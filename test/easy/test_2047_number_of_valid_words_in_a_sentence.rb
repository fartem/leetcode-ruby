# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2047_number_of_valid_words_in_a_sentence'
require 'minitest/autorun'

class NumberOfValidWordsInASentenceTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      3,
      count_valid_words(
        'cat and  dog'
      )
    )
  end

  def test_default_two
    assert_equal(
      0,
      count_valid_words(
        '!this  1-s b8d!'
      )
    )
  end

  def test_default_three
    assert_equal(
      5,
      count_valid_words(
        'alice and  bob are playing stone-game10'
      )
    )
  end
end
