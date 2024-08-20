# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/884_uncommon_words_from_two_sentences'
require 'minitest/autorun'

class UncommonWordsFromTwoSentencesTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      %w[sweet sour],
      uncommon_from_sentences(
        'this apple is sweet',
        'this apple is sour'
      )
    )
  end

  def test_default_two
    assert_equal(
      %w[banana],
      uncommon_from_sentences(
        'apple apple',
        'banana'
      )
    )
  end
end
