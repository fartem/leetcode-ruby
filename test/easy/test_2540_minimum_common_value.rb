# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2540_minimum_common_value'
require 'minitest/autorun'

class MinimumCommonValueTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2,
      get_common(
        [1, 2, 3],
        [2, 4]
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      get_common(
        [1, 2, 3, 6],
        [2, 3, 4, 5]
      )
    )
  end

  def test_additional_one
    assert_equal(
      -1,
      get_common(
        [1],
        [4]
      )
    )
  end
end
