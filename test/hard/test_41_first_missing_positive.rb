# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/hard/41_first_missing_positive'
require 'minitest/autorun'

class FirstMissingPositiveTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      3,
      first_missing_positive(
        [1, 2, 0]
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      first_missing_positive(
        [3, 4, -1, 1]
      )
    )
  end

  def test_default_three
    assert_equal(
      1,
      first_missing_positive(
        [7, 8, 9, 11, 12]
      )
    )
  end
end
