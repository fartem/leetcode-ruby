# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/720_longest_word_in_dictionary'
require 'minitest/autorun'

class LongestWordInDictionaryTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'world',
      longest_word(
        %w[w wo wor worl world]
      )
    )
  end

  def test_default_two
    assert_equal(
      'apple',
      longest_word(
        %w[a banana app appl ap apply apple]
      )
    )
  end
end
