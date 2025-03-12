# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2023_number_of_pairs_of_strings_with_concatenation_equal_to_target'
require 'minitest/autorun'

class NumberOfPairsOfStringsWithConcatenationEqualToTargetTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      4,
      num_of_pairs(
        %w[777 7 77 77],
        '7777'
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      num_of_pairs(
        %w[123 4 12 34],
        '1234'
      )
    )
  end

  def test_default_three
    assert_equal(
      6,
      num_of_pairs(
        %w[1 1 1],
        '11'
      )
    )
  end
end
