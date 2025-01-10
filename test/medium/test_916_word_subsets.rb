# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/916_word_subsets'
require 'minitest/autorun'

class WordSubsetsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      %w[facebook google leetcode],
      word_subsets(
        %w[amazon apple facebook google leetcode],
        %w[e o]
      )
    )
  end

  def test_default_two
    assert_equal(
      %w[apple google leetcode],
      word_subsets(
        %w[amazon apple facebook google leetcode],
        %w[l e]
      )
    )
  end
end
