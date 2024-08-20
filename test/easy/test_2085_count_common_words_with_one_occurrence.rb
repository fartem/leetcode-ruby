# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2085_count_common_words_with_one_occurrence'
require 'minitest/autorun'

class CountCommonWordsWithOneOccurrenceTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2,
      count_words(
        %w[leetcode is amazing as is],
        %w[amazing leetcode is]
      )
    )
  end

  def test_default_two
    assert_equal(
      0,
      count_words(
        %w[b bb bbb],
        %w[a aa aaa]
      )
    )
  end

  def test_default_three
    assert_equal(
      1,
      count_words(
        %w[a ab],
        %w[a a a ab]
      )
    )
  end
end
