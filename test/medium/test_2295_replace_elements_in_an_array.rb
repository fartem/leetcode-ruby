# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2295_replace_elements_in_an_array'
require 'minitest/autorun'

class ReplaceElementsInAnArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [3, 2, 7, 1],
      array_change(
        [1, 2, 4, 6],
        [
          [1, 3],
          [4, 7],
          [6, 1]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      [2, 1],
      array_change(
        [1, 2],
        [
          [1, 3],
          [2, 1],
          [3, 2]
        ]
      )
    )
  end
end
