# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2185_counting_words_with_a_given_prefix'
require 'minitest/autorun'

class CountingWordsWithAGivenPrefixTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2,
      prefix_count(
        %w[pay attention practice attend],
        'at'
      )
    )
  end

  def test_default_two
    assert_equal(
      0,
      prefix_count(
        %w[leetcode win loops success],
        'code'
      )
    )
  end
end
