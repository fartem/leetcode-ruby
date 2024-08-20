# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2500_delete_greatest_value_in_each_row'
require 'minitest/autorun'

class DeleteGreatestValueInEachRowTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      8,
      delete_greatest_value(
        [
          [1, 2, 4],
          [3, 3, 1]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      10,
      delete_greatest_value(
        [
          [10]
        ]
      )
    )
  end
end
