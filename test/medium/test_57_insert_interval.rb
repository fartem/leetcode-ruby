# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/57_insert_interval'
require 'minitest/autorun'

class InsertIntervalTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        [1, 5],
        [6, 9]
      ],
      insert(
        [
          [1, 3],
          [6, 9]
        ],
        [2, 5]
      )
    )
  end

  def test_default_two
    assert_equal(
      [
        [1, 2],
        [3, 10],
        [12, 16]
      ],
      insert(
        [
          [1, 2],
          [3, 5],
          [6, 7],
          [8, 10],
          [12, 16]
        ],
        [4, 8]
      )
    )
  end
end
