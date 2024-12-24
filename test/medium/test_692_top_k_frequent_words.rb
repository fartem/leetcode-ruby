# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/692_top_k_frequent_words'
require 'minitest/autorun'

class TopKFrequentWordsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      %w[i love],
      top_k_frequent_words(
        %w[i love leetcode i love coding],
        2
      )
    )
  end

  def test_default_two
    assert_equal(
      %w[the is sunny day],
      top_k_frequent_words(
        %w[the day is sunny the the the sunny is is],
        4
      )
    )
  end
end
