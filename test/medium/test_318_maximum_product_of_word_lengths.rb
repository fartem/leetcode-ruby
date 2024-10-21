# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/318_maximum_product_of_word_lengths'
require 'minitest/autorun'

class MaximumProductOfWordLengthsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      16,
      max_product318(
        %w[abcw baz foo bar xtfn abcdef]
      )
    )
  end

  def test_default_two
    assert_equal(
      4,
      max_product318(
        %w[a ab abc d cd bcd abcd]
      )
    )
  end

  def test_default_three
    assert_equal(
      0,
      max_product318(
        %w[a aa aaa aaaa]
      )
    )
  end
end
