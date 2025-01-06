# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/hard/115_distinct_subsequences'
require 'minitest/autorun'

class DistinctSubsequencesTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      3,
      num_distinct(
        'rabbbit',
        'rabbit'
      )
    )
  end

  def test_default_two
    assert_equal(
      5,
      num_distinct(
        'babgbag',
        'bag'
      )
    )
  end
end
