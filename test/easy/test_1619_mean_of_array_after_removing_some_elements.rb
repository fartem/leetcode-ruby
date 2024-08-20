# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1619_mean_of_array_after_removing_some_elements'
require 'minitest/autorun'

class MeanOfArrayAfterMovingSomeElementsTest < ::Minitest::Test
  # rubocop:disable Style/DisableCopsWithinSourceCodeDirective, Layout/MultilineArrayLineBreaks
  def test_default_one
    assert_equal(
      2.00000,
      trim_mean(
        [
          1, 2, 2, 2, 2, 2, 2, 2, 2, 2,
          2, 2, 2, 2, 2, 2, 2, 2, 2, 3
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      4.00000,
      trim_mean(
        [
          6, 2, 7, 5, 1, 2, 0, 3, 10, 2,
          5, 0, 5, 5, 0, 8, 7, 6, 8, 0
        ]
      )
    )
  end

  def test_default_three
    assert_equal(
      4.777777777777778,
      trim_mean(
        [
          6, 0, 7, 0, 7, 5, 7, 8, 3, 4, 0,
          7, 8, 1, 6, 8, 1, 1, 2, 4, 8, 1,
          9, 5, 4, 3, 8, 5, 10, 8, 6, 6, 1,
          0, 6, 10, 8, 2, 3, 4
        ]
      )
    )
  end

  # rubocop:enable Style/DisableCopsWithinSourceCodeDirective, Layout/MultilineArrayLineBreaks
end
