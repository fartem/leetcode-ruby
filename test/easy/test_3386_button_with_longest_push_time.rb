# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/3386_button_with_longest_push_time'
require 'minitest/autorun'

class ButtonWithLongestPushTimeTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      1,
      button_with_longest_time(
        [
          [1, 2],
          [2, 5],
          [3, 9],
          [1, 15]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      10,
      button_with_longest_time(
        [
          [10, 5],
          [1, 7]
        ]
      )
    )
  end
end
